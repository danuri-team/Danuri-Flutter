import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/core/provider/flows/item_rental_flow_provider.dart';
import 'package:danuri_flutter/core/provider/item_id_provider.dart';
import 'package:danuri_flutter/data/view_models/item_rental_view_model.dart';
import 'package:danuri_flutter/view/components/availability_sign.dart';
import 'package:danuri_flutter/view/components/button/next_button.dart';
import 'package:danuri_flutter/view/components/custom_top_bar.dart';
import 'package:danuri_flutter/view/components/selection_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ItemRentalScreen extends StatefulWidget {
  const ItemRentalScreen({super.key});

  @override
  State<ItemRentalScreen> createState() => _ItemRentalScreenState();
}

class _ItemRentalScreenState extends State<ItemRentalScreen> {
  Map<String, String?> selectedItem = {'itemId': null};

  final ItemRentalViewModel _itemViewModel = ItemRentalViewModel();

  Future<void> fetchData() async {
    await Future.wait([
      _itemViewModel.getItemAvailableRent(), // 대여 가능 아이템 조회
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
            if (_itemViewModel.itemAvailableRental == null)
              SizedBox.shrink()
            else
              SizedBox(
                width: double.infinity,
                height: 48.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _itemViewModel.itemAvailableRental?.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        SelectionBox(
                          available: _itemViewModel.itemAvailableRental![index]
                                  .availableQuantity !=
                              0,
                          isSelected: selectedItem['itemId'] ==
                              _itemViewModel.itemAvailableRental![index].id,
                          name: _itemViewModel.itemAvailableRental![index].name,
                          onTap: () {
                            if (_itemViewModel.itemAvailableRental![index]
                                    .availableQuantity !=
                                0) {
                              setState(() {
                                selectedItem['itemId'] = _itemViewModel
                                    .itemAvailableRental![index].id;
                              });
                            }
                          },
                        ),
                        if (_itemViewModel.itemAvailableRental!.length !=
                            index + 1)
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
                  onTap: () {
                    context
                        .read<ItemIdProvider>()
                        .setSpaceId(selectedItem['itemId']!);
                    context.read<ItemRentalFlowProvider>().startFlow();
                    context.push('/login');
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
