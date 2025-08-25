import 'package:danuri_flutter/core/provider/item_id_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/data/view_models/item_rental_view_model.dart';
import 'package:danuri_flutter/presentation/widgets/selection_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectItem extends ConsumerStatefulWidget {
  const SelectItem({super.key});

  @override
  ConsumerState<SelectItem> createState() => _SelectItemState();
}

class _SelectItemState extends ConsumerState<SelectItem> {
  final ItemViewModel _viewModel = ItemViewModel();

  Future<void> fetchData() async {
    await _viewModel.getItemAvailableRental().then((_) => setState(() {}));
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(itemIdProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                      isSelected: state ==
                          _viewModel.itemAvailableRentalList![index].id,
                      name: _viewModel.itemAvailableRentalList![index].name,
                      onTap: () {
                        if (_viewModel.itemAvailableRentalList![index]
                                .availableQuantity !=
                            0) {
                          if (state !=
                              _viewModel.itemAvailableRentalList![index].id) {
                            ref.read(itemIdProvider.notifier).update(
                                  (state) => _viewModel
                                      .itemAvailableRentalList![index].id,
                                );
                          }
                        }
                      },
                    ),
                    if (_viewModel.itemAvailableRentalList!.length != index + 1)
                      SizedBox(width: 12.w),
                  ],
                );
              },
            ),
          ),
      ],
    );
  }
}
