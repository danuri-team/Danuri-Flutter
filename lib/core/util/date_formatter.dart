import 'package:intl/intl.dart';

class DateFormatter {
  static final now = DateTime.now();

  static String HHmmss({required int hour, required int minute}) {
    return DateFormat('HH:mm:ss').format(
      DateTime(
        now.year,
        now.month,
        now.day,
        hour,
        minute,
      ),
    );
  }

  static String Hmm({required int hour, required int minute}) {
    return DateFormat('H:mm').format(
      DateTime(
        now.year,
        now.month,
        now.day,
        hour,
        minute,
      ),
    );
  }
}
