import 'package:danuri_flutter/core/provider/space_rental_provider.dart';
import 'package:danuri_flutter/core/provider/time_slot_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/data/view_models/space_view_model.dart';
import 'package:danuri_flutter/presentation/widgets/selection_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpaceList extends ConsumerStatefulWidget {
  const SpaceList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SpaceListState();
}

class _SpaceListState extends ConsumerState<SpaceList> {
  final SpaceViewModel viewModel = SpaceViewModel();

  Future<void> fetchSpaceUsageStatus() async {
    await viewModel.getSpaceUsageStatus().then(
          (_) => setState(() {}),
        );
  }

  @override
  void initState() {
    super.initState();
    fetchSpaceUsageStatus();
  }

  @override
  Widget build(BuildContext context) {
    final spaceId = ref.watch(spaceIdProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '공간',
          style: DanuriText.body1Normal.copyWith(
            color: DanuriColor.label5,
            height: 0,
          ),
        ),
        SizedBox(height: 14.h),
        if (viewModel.spaceUsageStatus == null)
          SizedBox.shrink()
        else
          SizedBox(
            width: double.infinity,
            height: 48.h,
            child: ListView.separated(
              itemCount: viewModel.spaceUsageStatus!.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 12.w),
              itemBuilder: (context, index) {
                final spaceUsageStatus = viewModel.spaceUsageStatus;
                return SelectionBox(
                  available: spaceUsageStatus![index].isAvailable,
                  isSelected: spaceId == spaceUsageStatus[index].spaceId,
                  name: spaceUsageStatus[index].name,
                  onTap: () {
                    if (spaceUsageStatus[index].isAvailable == true) {
                      ref.read(spaceIdProvider.notifier).update(
                            (state) => spaceUsageStatus[index].spaceId,
                          );
                      ref.read(timeSlotProvider.notifier).reset();
                      ref
                          .read(timeSlotProvider.notifier)
                          .addTimeSlot(spaceUsageStatus[index].timeSlots);
                    }
                  },
                );
              },
            ),
          ),
      ],
    );
  }
}
