import 'package:danuri_flutter/data/models/other/space/response/space_usage_status_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timeSlotProvider =
    StateNotifierProvider<TimeSlotNotifier, List<Map<String, dynamic>>>(
  (ref) => TimeSlotNotifier(),
);

class TimeSlotNotifier extends StateNotifier<List<Map<String, dynamic>>> {
  TimeSlotNotifier() : super([]);

  final now = DateTime.now();

  void addTimeSlot(List<TimeSlots> timeSlots) {
    DateTime startTime;
    DateTime endTime;
    for (int index = 0; index < timeSlots.length; index++) {
      startTime = DateTime(now.year, now.month, now.day, timeSlots[index].startTime[0], timeSlots[index].startTime[1]);
      endTime = DateTime(now.year, now.month, now.day, timeSlots[index].endTime[0], timeSlots[index].endTime[1]);

      state = [
        ...state,
        {'startTime':startTime, 'endTime':endTime, 'isAvailable': timeSlots[index].isAvailable}
      ];
    }
  }

  void reset() {
    state = [];
  }
}
