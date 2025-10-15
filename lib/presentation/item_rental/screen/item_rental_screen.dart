import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/provider/item_id_provider.dart';
import 'package:danuri_flutter/core/provider/qr_action_provider.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/data/models/enum/qr_action_type.dart';
import 'package:danuri_flutter/data/view_models/item_rental_view_model.dart';
import 'package:danuri_flutter/presentation/item_rental/widgets/select_item.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:danuri_flutter/presentation/widgets/available_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ItemRentalScreen extends ConsumerWidget {
  ItemRentalScreen({super.key});

  final ItemViewModel viewModel = ItemViewModel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(itemIdProvider);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(60.w, 85.h, 61.w, 58.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTopBar(
              title: '이용할 물품을 선택해주세요',
              subTitle: '물품 대여 시, 공간 이용 중에만 가능하며 이용 종료 전 반납하여야 합니다.',
              needCallBackButton: true,
              rightWidget: Column(
                children: [
                  SizedBox(height: 160.sp),
                  const AvailableCategory(),
                ],
              ),
              callBackButtonOnTap: () =>
                  ref.read(itemIdProvider.notifier).update((state) => null),
            ),
            SizedBox(height: 103.h),
            const SelectItem(),
            const Spacer(),
            NextButton(
              centerText: '다음',
              onTap: () {
                if (state != null) {
                  Throttle.run(
                    () {
                      ref
                          .read(qrActionProvider.notifier)
                          .update((state) => QrActionType.ITEM_RENTAL);
                      AppNavigation.pushQr(context, CameraFacing.front);
                    },
                  );
                }
              },
              isActivate: state != null,
            ),
          ],
        ),
      ),
    );
  }
}
