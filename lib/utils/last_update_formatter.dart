import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class LastUpdatedStatusFormatter {
  final DateTime lastUpdated;

  LastUpdatedStatusFormatter({@required this.lastUpdated});

  String lastUpdatedStatusText() {
    if (lastUpdated != null) {
      final formatter = DateFormat.yMd().add_Hms();
      final formatted = formatter.format(lastUpdated);
      return "Ultima actualizacion: $formatted";
    }
    return "";
  }
}
