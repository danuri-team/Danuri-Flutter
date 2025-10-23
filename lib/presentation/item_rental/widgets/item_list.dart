import 'package:danuri_flutter/core/provider/item_id_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/data/models/other/rental_item/response/available_items_response.dart';
import 'package:danuri_flutter/data/view_models/item_rental_view_model.dart';
import 'package:danuri_flutter/presentation/widgets/selection_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final itemAvailableRentalProvider = FutureProvider<List<ItemAvailableRental>?>(
  (ref) async {
    final itemViewModel = ref.read(itemViewModelProvider);
    await itemViewModel.getItemAvailableRental();
    return itemViewModel.itemAvailableRentalList;
  },
);

class ItemList extends ConsumerWidget {
  const ItemList({super.key});

  void _selectItem(WidgetRef ref, String id) {
    ref.read(itemIdProvider.notifier).update(
          (state) => id,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemId = ref.watch(itemIdProvider);
    final itemAvailableRentalAsync = ref.watch(itemAvailableRentalProvider);
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
        itemAvailableRentalAsync.when(
          data: (data) {
            return SizedBox(
              width: double.infinity,
              height: 48.h,
              child: ListView.separated(
                itemCount: data!.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 12.w),
                itemBuilder: (context, index) {
                  final item = data[index];
                  return SelectionBox(
                    available: item.availableQuantity != 0,
                    isSelected: itemId == item.id,
                    name: item.name,
                    onTap: () {
                      if (item.availableQuantity > 0 && itemId != item.id) {
                        _selectItem(ref, item.id);
                      }
                    },
                  );
                },
              ),
            );
          },
          error: (error, stackTrace) => Text(error.toString()),
          loading: () {
            return SizedBox(
              width: double.infinity,
              height: 48.h,
              child: ListView.separated(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 12.w),
                itemBuilder: (context, index) {
                  return SelectionBox(
                    available: true,
                    isSelected: false,
                    name: '',
                    onTap: () {},
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
