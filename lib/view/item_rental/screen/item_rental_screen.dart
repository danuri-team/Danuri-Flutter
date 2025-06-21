import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/data/view_models/item_rental_view_model.dart';
import 'package:danuri_flutter/view/compoments/availability_sign.dart';
import 'package:danuri_flutter/view/compoments/button/next_button.dart';
import 'package:danuri_flutter/view/compoments/custom_top_bar.dart';
import 'package:danuri_flutter/view/compoments/selection_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ItemRentalScreen extends StatefulWidget {
  const ItemRentalScreen({super.key});

  @override
  State<ItemRentalScreen> createState() => _ItemRentalScreenState();
}

class _ItemRentalScreenState extends State<ItemRentalScreen> {
  Map<String, String?> selectedItem = {'itemId': null};

  final ItemRentalViewModel _viewModel = ItemRentalViewModel();

  Future<void> fetchItemAvailableRent() async {
    await _viewModel.getItemAvailableRent().then(
          (_) => setState(() {}),
        );
  }

  @override
  void initState() {
    super.initState();
    fetchItemAvailableRent();
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
                  needHelpMeButton: false,
                ),
                Column(
                  children: [
                    SizedBox(height: 148.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AvailabilitySign(available: true),
                        SizedBox(width: 34.w),
                        AvailabilitySign(available: false),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 103.h),
            Text(
              '물품',
              style: DanuriText.body1Normal.copyWith(color: DanuriColor.label5),
            ),
            SizedBox(height: 14.h),
            if (_viewModel.itemAvailableRental == null)
              SizedBox.shrink()
            else
              SizedBox(
                width: 538.w,
                height: 48.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _viewModel.itemAvailableRental?.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        SelectionBox(
                          available: _viewModel.itemAvailableRental![index]
                                  .available_quantity !=
                              0,
                          isSelected: selectedItem['itemId'] ==
                              _viewModel.itemAvailableRental![index].id,
                          spaceName:
                              _viewModel.itemAvailableRental![index].name,
                          onTap: () {
                            if (_viewModel.itemAvailableRental![index]
                                    .available_quantity !=
                                0) {
                              setState(() {
                                selectedItem['itemId'] =
                                    _viewModel.itemAvailableRental![index].id;
                              });
                            }
                          },
                        ),
                        if (_viewModel.itemAvailableRental!.length != index + 1)
                          SizedBox(width: 12.w),
                      ],
                    );
                  },
                ),
              ),
            SizedBox(height: 226.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NextButton(
                  centerText: '다음',
                  onTap: () async {
                    await _viewModel.itemRental(
                        'usageId', selectedItem['itemId']!, 1);
                    if (context.mounted) {
                      context.go('/home');
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
