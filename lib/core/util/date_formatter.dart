import 'package:intl/intl.dart';

class DateFormatter {
  final now = DateTime.now();

  String HHmmss({required int hour, required int minute}) {
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

  String Hmm({required int hour, required int minute}) {
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
