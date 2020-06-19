import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class DataCacheService {
  static const THEME_STATUS = "THEMESTATUS";
  bool _cacheDarkTheme = false;

  // Getters
  bool cacheDarkTheme() {
    return _cacheDarkTheme;
  }

  // Services
  Future<void> setTheme({bool value}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(THEME_STATUS, value);
    _cacheDarkTheme = value;
  }

  Future getTheme() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    _cacheDarkTheme = preferences.getBool(THEME_STATUS) ?? false;
    return _cacheDarkTheme;
  }
}
