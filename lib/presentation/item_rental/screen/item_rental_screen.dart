import 'package:danuri_flutter/core/provider/flow_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/provider/item_id_provider.dart';
import 'package:danuri_flutter/data/models/enum/flow_type.dart';
import 'package:danuri_flutter/data/view_models/item_available_rental_view_model.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:danuri_flutter/presentation/widgets/selection_box.dart';
import 'package:danuri_flutter/presentation/register_used_space/widgets/available_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ItemRentalScreen extends ConsumerStatefulWidget {
  const ItemRentalScreen({super.key});

  @override
  ConsumerState<ItemRentalScreen> createState() => _ItemRentalScreenState();
}

class _ItemRentalScreenState extends ConsumerState<ItemRentalScreen> {
  Map<String, String?> selectedItem = {'itemId': null};

  final ItemAvailableRentalViewModel _viewModel =
      ItemAvailableRentalViewModel();

  Future<void> fetchData() async {
    await Future.wait([
      _viewModel.getItemAvailableRental(), // 대여 가능 아이템 조회
    ]).then(
      (_) => setState(() {}),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(60.w, 85.h, 61.w, 58.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CustomTopBar(
                  title: '이용할 물품을 선택해주세요',
                  subTitle: '물품 대여 시, 공간 이용 중에만 가능하며 이용 종료 전 반납하여야 합니다.',
                  needCallBackButton: true,
                  rightWidget: Column(
                    children: [
                      SizedBox(height: 160.sp),
                      AvailableCategory(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 103.h),
            Text(
              '물품',
              style: DanuriText.body1Normal.copyWith(
                color: DanuriColor.label5,
                height: 0,
              ),
            ),
            SizedBox(height: 14.h),
            if (_viewModel.itemAvailableRentalList == null)
              SizedBox(height: 48.h)
            else
              SizedBox(
                width: double.infinity,
                height: 48.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _viewModel.itemAvailableRentalList?.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        SelectionBox(
                          available: _viewModel.itemAvailableRentalList![index]
                                  .availableQuantity !=
                              0,
                          isSelected: selectedItem['itemId'] ==
                              _viewModel.itemAvailableRentalList![index].id,
                          name: _viewModel.itemAvailableRentalList![index].name,
                          onTap: () {
                            if (_viewModel.itemAvailableRentalList![index]
                                    .availableQuantity !=
                                0) {
                              setState(() {
                                selectedItem['itemId'] = _viewModel
                                    .itemAvailableRentalList![index].id;
                              });
                            }
                          },
                        ),
                        if (_viewModel.itemAvailableRentalList!.length !=
                            index + 1)
                          SizedBox(width: 12.w),
                      ],
                    );
                  },
                ),
              ),
            SizedBox(height: 207.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NextButton(
                  centerText: '다음',
                  onTap: () {
                    if (selectedItem['itemId'] != null) {
                      ref.read(itemIdProvider.notifier).update(
                            (state) => selectedItem['itemId']!,
                          );
                      ref.read(flowProvider.notifier).update(
                            (state) => FlowType.ITEM_RENTAL_FLOW,
                          );
                      context.push('/login');
                    }
                  },
                  isActivate: selectedItem['itemId'] != null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
