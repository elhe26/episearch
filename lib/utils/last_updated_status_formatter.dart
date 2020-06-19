import 'package:intl/intl.dart';

class StatusFormatter {
  static String lastUpdatedStatusText({DateTime lastUpdated}) {
    if (lastUpdated != null) {
      final formatter = DateFormat.yMMMEd().add_Hms();
      final formatted = formatter.format(lastUpdated);
      return "$formatted";
    }
    return "";
  }

  static String numberFormatter({int number}) {
    if (number != null) {
      final formatter = NumberFormat("#,###");
      final formatted = formatter.format(number).toString();
      return formatted;
    }
    return "";
  }

  static String lastUpdatedStatusFromText({String date}) {
    if (date != null) {
      final dateString = DateTime.tryParse(date);
      final formatter = DateFormat.yMMMEd().add_Hms();
      final formatted = formatter.format(dateString);
      return "$formatted";
    }
    return "";
  }
}
