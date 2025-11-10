import 'dart:convert';
import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/provider/item_id_provider.dart';
import 'package:danuri_flutter/core/provider/item_rental_provider.dart';
import 'package:danuri_flutter/core/provider/qr_action_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/core/enum/qr_action_type.dart';
import 'package:danuri_flutter/data/view_models/device_auth_view_model.dart';
import 'package:danuri_flutter/data/view_models/item_rental_view_model.dart';
import 'package:danuri_flutter/data/view_models/space_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrScreen extends ConsumerWidget {
  const QrScreen({
    super.key,
    required this.cameraFacing,
  });

  final String cameraFacing;

  checkFacing(String cameraFacing) {
    switch (cameraFacing) {
      case 'back':
        return CameraFacing.back;
      case 'front':
        return CameraFacing.front;
      default:
        return CameraFacing.front;
    }
  }

  Future<void> itemRental(
      {required BuildContext context,
      required WidgetRef ref,
      required BarcodeCapture capture}) async {
    final value = capture.barcodes[0].displayValue;

    if (value != null) {
      final Map<String, dynamic> decoded = jsonDecode(value);
      final itemId = ref.read(itemIdProvider.notifier).state;

      final viewModel = ItemViewModel();

      await viewModel.itemRental(
        itemId: itemId!,
        quantity: 1,
        usageId: decoded['usageId'],
      );

      ref.read(itemIdProvider.notifier).update((state) => null);

      if (viewModel.error == false) {
        ref.read(itemRentalProvider.notifier).update(
              (state) => true,
            );
        AppNavigation.pushCompletion(context);
      } else {
        AppNavigation.pushFailure(context);
      }
    }
  }

  Future<void> organAuth(
      {required BuildContext context,
      required WidgetRef ref,
      required BarcodeCapture capture}) async {
    final value = capture.barcodes[0].displayValue;

    if (value != null) {
      final Map<String, dynamic> decoded = jsonDecode(value);

      final viewModel = DeviceAuthViewModel();
      await viewModel.deviceAuth(code: decoded['code']);

      if (viewModel.error == false) {
        AppNavigation.goHome(context);
      }
    }
  }

  Future<void> checkOut(
      {required BuildContext context,
      required BarcodeCapture capture,
      required WidgetRef ref}) async {
    final value = capture.barcodes[0].displayValue;
    if (value != null) {
      final Map<String, dynamic> decoded = jsonDecode(value);

      final whetherToRentItems = ref.read(itemRentalProvider.notifier).state;
      if (whetherToRentItems == true) {
        final itemViewModel = ItemViewModel();
        await itemViewModel.returnItem(usageId: decoded['usageId']);
        if (itemViewModel.error == true) {
          AppNavigation.pushFailure(context);
          return;
        }
      }

      final spaceViewModel = SpaceViewModel();
      await spaceViewModel.checkOut(usageId: decoded['usageId']);
      if (spaceViewModel.error == true) {
        AppNavigation.pushFailure(context);
        return;
      }
      ref.read(itemRentalProvider.notifier).update(
            (state) => false,
          );
      AppNavigation.pushCompletion(context);
    }
  }

  String qrNotice(QrActionType qrActionType) {
    switch (qrActionType) {
      case QrActionType.ITEM_RENTAL:
        return '※ 공간 이용 등록시 제공받은 QR을 이용하세요';
      case QrActionType.ORGAN_AUTH:
        return '※ 관리자 웹에서 QR을 발급받아 사용하세요';
      case QrActionType.CHECK_OUT:
        return '※ 공간 이용 등록시 제공받은 QR을 이용하세요';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qrActionType = ref.read(qrActionProvider.notifier).state;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            MobileScanner(
              onDetectError: (error, stackTrace) => throw Exception(error),
              onDetect: (capture) {
                Throttle.run(
                  () async {
                    switch (qrActionType!) {
                      case QrActionType.ITEM_RENTAL:
                        await itemRental(
                            context: context, ref: ref, capture: capture);
                        break;
                      case QrActionType.ORGAN_AUTH:
                        await organAuth(
                            context: context, ref: ref, capture: capture);
                      case QrActionType.CHECK_OUT:
                        await checkOut(
                            context: context, capture: capture, ref: ref);
                    }
                  },
                );
              },
              controller: MobileScannerController(
                facing: checkFacing(cameraFacing),
                formats: [BarcodeFormat.qrCode],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 85.h, left: 60.w, bottom: 20.h),
              child: GestureDetector(
                onTap: () => AppNavigation.pop(context),
                behavior: HitTestBehavior.opaque,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/white-chevron-left.svg'),
                        SizedBox(width: 24.w),
                        Text(
                          'QR 인식',
                          style: DanuriText.title2
                              .copyWith(color: DanuriColor.static1),
                        ),
                      ],
                    ),
                    Text(
                      qrNotice(qrActionType!),
                      style: DanuriText.title2
                          .copyWith(color: DanuriColor.static1),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
