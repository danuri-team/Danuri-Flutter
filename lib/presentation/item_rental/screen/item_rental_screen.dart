import 'package:danuri_flutter/core/provider/flow_provider.dart';
import 'package:danuri_flutter/core/provider/item_id_provider.dart';
import 'package:danuri_flutter/data/models/enum/flow_type.dart';
import 'package:danuri_flutter/presentation/item_rental/widgets/select_item.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:danuri_flutter/presentation/widgets/available_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ItemRentalScreen extends ConsumerWidget {
  const ItemRentalScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(itemIdProvider);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(60.w, 85.h, 61.w, 58.h),
        child: Column(
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
            ),
            SizedBox(height: 103.h),
            SelectItem(),
            const Spacer(),
            NextButton(
              centerText: '다음',
              onTap: () {
                if (state != null) {
                  ref.read(flowProvider.notifier).update(
                        (state) => FlowType.ITEM_RENTAL_FLOW,
                      );
                  context.push('/login');
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
