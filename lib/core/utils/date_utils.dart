import 'package:intl/intl.dart';

class DateUtils {
  static String formatLocalTime(String localTimeStr) {
    try {
      final dt = DateTime.parse(localTimeStr);
      return DateFormat('hh:mm a').format(dt);
    } catch (_) {
      return localTimeStr;
    }
  }

  static String formatDayName(String dateStr) {
    try {
      final dt = DateTime.parse(dateStr);
      if (dt.day == DateTime.now().day && dt.month == DateTime.now().month && dt.year == DateTime.now().year) {
        return 'Today';
      }
      return DateFormat('EEEE').format(dt);
    } catch (_) {
      return dateStr;
    }
  }
}
