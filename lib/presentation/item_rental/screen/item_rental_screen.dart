import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/provider/item_id_provider.dart';
import 'package:danuri_flutter/core/provider/qr_action_provider.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/data/models/enum/qr_action_type.dart';
import 'package:danuri_flutter/presentation/item_rental/widgets/item_list.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:danuri_flutter/presentation/widgets/available_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemRentalScreen extends ConsumerWidget {
  const ItemRentalScreen({super.key});

  void _submit(WidgetRef ref, BuildContext context) {
    ref
        .read(qrActionProvider.notifier)
        .setExecuteAction(QrActionType.ITEM_RENTAL);
    AppNavigation.pushQr(context);
  }

  void _callBack(WidgetRef ref){
    ref.read(itemIdProvider.notifier).update((state) => null);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemId = ref.watch(itemIdProvider);
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
              callBackButtonOnTap: () => _callBack(ref),
            ),
            SizedBox(height: 103.h),
            const ItemList(),
            const Spacer(),
            NextButton(
              centerText: '다음',
              onTap: () {
                if (itemId != null) {
                  Throttle.run(
                    () => _submit,
                  );
                }
              },
              isActivate: itemId != null,
            ),
          ],
        ),
      ),
    );
  }
}
