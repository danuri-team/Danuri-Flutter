import 'package:danuri_flutter/core/provider/space_rental_provider.dart';
import 'package:danuri_flutter/core/provider/time_slot_provider.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/util/date_formatter.dart';
import 'package:danuri_flutter/presentation/widgets/selection_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeSlotList extends ConsumerWidget {
  const TimeSlotList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeSlot = ref.watch(timeSlotProvider);
    final startAt = ref.watch(startAtProvider);
    if (timeSlot == null) {
      return SizedBox(height: 48.h);
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '시간대',
            style: DanuriText.body1Normal,
          ),
          SizedBox(height: 14.h),
          SizedBox(
            width: double.infinity,
            height: 48.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: timeSlot.length,
              separatorBuilder: (context, index) => SizedBox(width: 12.w),
              itemBuilder: (context, index) {
                final DateTime startTime = timeSlot[index]['startTime'];
                final DateTime endTime = timeSlot[index]['endTime'];
                final bool isAvailable = timeSlot[index]['isAvailable'];
                final DateFormatter dateFormatter = DateFormatter();
                final startTimeFormat = dateFormatter.Hmm(hour: startTime.hour, minute: startTime.minute);
                final endTimeFormat = dateFormatter.Hmm(hour: endTime.hour, minute: endTime.minute);
                final selectedStartAt = dateFormatter.HHmmss(hour: startTime.hour, minute: startTime.minute);
                return SelectionBox(
                  available: isAvailable,
                  isSelected: startAt == selectedStartAt,
                  name:
                      '$startTimeFormat ~ $endTimeFormat',
                  onTap: () {
                    if (isAvailable == true) {
                      ref.read(startAtProvider.notifier).update(
                            (state) => selectedStartAt,
                          );
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
}
