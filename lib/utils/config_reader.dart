import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/api_points.dart';

abstract class ConfigReader {
  static APIPoints _apiPoints;

  static Future<void> initialize() async {
    final configString = await rootBundle.loadString("config/app_config.json");
    _apiPoints = APIPoints.fromJson(json.decode(configString));
  }

  static APIPoints endpoints() {
    return _apiPoints;
  }
}
