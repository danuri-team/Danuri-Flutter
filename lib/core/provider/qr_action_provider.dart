import 'dart:convert';

import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/provider/item_id_provider.dart';
import 'package:danuri_flutter/data/models/enum/qr_action_type.dart';
import 'package:danuri_flutter/data/view_models/device_auth_view_model.dart';
import 'package:danuri_flutter/data/view_models/item_rental_view_model.dart';
import 'package:danuri_flutter/data/view_models/space_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

final qrActionProvider =
    StateNotifierProvider<QrActionNotifier, QrActionState?>(
  (ref) => QrActionNotifier(),
);

class QrActionState {
  final QrActionType qrActionType;
  final CameraFacing cameraFacting;
  final String instructions;

  QrActionState({
    required this.qrActionType,
    required this.cameraFacting,
    required this.instructions,
  });
}

class QrActionNotifier extends StateNotifier<QrActionState?> {
  QrActionNotifier() : super(null);

  void setExecuteAction(QrActionType type) {
    switch (type) {
      case QrActionType.ORGAN_AUTH:
        state = QrActionState(
          qrActionType: QrActionType.ORGAN_AUTH,
          cameraFacting: CameraFacing.back,
          instructions: '※ 관리자 웹에서 QR을 발급받아 사용하세요',
        );
        break;
      case QrActionType.ITEM_RENTAL:
        state = QrActionState(
          qrActionType: QrActionType.ITEM_RENTAL,
          cameraFacting: CameraFacing.front,
          instructions: '※ 공간 이용 등록시 제공받은 QR을 이용하세요',
        );
        break;
      case QrActionType.CHECK_OUT:
        state = QrActionState(
          qrActionType: QrActionType.CHECK_OUT,
          cameraFacting: CameraFacing.front,
          instructions: '※ 공간 이용 등록시 제공받은 QR을 이용하세요',
        );
        break;
    }
  }

  void excute(
      {required BarcodeCapture capture,
      required WidgetRef ref,
      required BuildContext context}) {
    switch (state!.qrActionType) {
      case QrActionType.ORGAN_AUTH:
        _organAuth(capture: capture, ref: ref, context: context);
        break;
      case QrActionType.ITEM_RENTAL:
        _itemRental(capture: capture, ref: ref, context: context);
        break;
      case QrActionType.CHECK_OUT:
        _checkOut(capture: capture, ref: ref, context: context);
        break;
    }
  }

  void _organAuth(
      {required BarcodeCapture capture,
      required WidgetRef ref,
      required BuildContext context}) async {
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

  void _itemRental(
      {required BarcodeCapture capture,
      required WidgetRef ref,
      required BuildContext context}) async {
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
        AppNavigation.pushCompletion(context);
      } else {
        AppNavigation.pushFailure(context);
      }
    }
  }

  void _checkOut(
      {required BarcodeCapture capture,
      required WidgetRef ref,
      required BuildContext context}) async {
    final value = capture.barcodes[0].displayValue;
    if (value != null) {
      final Map<String, dynamic> decoded = jsonDecode(value);

      final spaceViewModel = SpaceViewModel();
      final itemViewModel = ItemViewModel();

      await spaceViewModel.getUsageSpace();

      await Future.wait([
        itemViewModel.returnItem(usageId: decoded['usageId']),
        spaceViewModel.checkOut(usageId: decoded['usageId']),
      ]);

      if (spaceViewModel.error == false && itemViewModel.error == false) {
        AppNavigation.pushCompletion(context);
      } else {
        AppNavigation.pushFailure(context);
      }
    }
  }
}
