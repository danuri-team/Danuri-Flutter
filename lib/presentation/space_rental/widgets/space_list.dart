import 'package:danuri_flutter/core/provider/space_rental_provider.dart';
import 'package:danuri_flutter/core/provider/time_slot_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/data/models/other/space/response/space_usage_status_response.dart';
import 'package:danuri_flutter/data/view_models/space_view_model.dart';
import 'package:danuri_flutter/presentation/widgets/selection_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final spaceUsageStatusProvider =
    FutureProvider<List<SpaceUsageStatusResponse>?>(
  (ref) async {
    final spaceViewModel = ref.read(spaceViewModelProvider);
    await spaceViewModel.getSpaceUsageStatus();
    return spaceViewModel.spaceUsageStatus;
  },
);

class SpaceList extends ConsumerWidget {
  const SpaceList({super.key});

  void _selectSpace(SpaceUsageStatusResponse space, WidgetRef ref) {
    ref.read(spaceIdProvider.notifier).update(
          (state) => space.spaceId,
        );
    ref.read(timeSlotProvider.notifier).reset();
    ref.read(timeSlotProvider.notifier).addTimeSlot(space.timeSlots);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spaceUsageStatus = ref.watch(spaceUsageStatusProvider);
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
        spaceUsageStatus.when(
          data: (data) {
            return SizedBox(
              width: double.infinity,
              height: 48.h,
              child: ListView.separated(
                itemCount: data!.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 12.w),
                itemBuilder: (context, index) {
                  final space = data[index];
                  return SelectionBox(
                    available: space.isAvailable,
                    isSelected: spaceId == space.spaceId,
                    name: space.name,
                    onTap: () {
                      if (space.isAvailable == true) {
                        _selectSpace(space, ref);
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
