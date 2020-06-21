import 'dart:io';

import 'package:clientes/models/country.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:injectable/injectable.dart';

import '../models/global.dart';

@lazySingleton
class DataCacheService {
  static const THEME_STATUS = "THEMESTATUS";
  bool _cacheDarkTheme = false;
  Directory _appDocumentDir;
  Box _data;
  Global _globalSavedData;
  List<Country> _countriesSavedData;

  Future<void> initialize() async {
    _appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(_appDocumentDir.path);
    _data = await Hive.openBox("data");
    if (_data.isNotEmpty) {
      // Extrating the data
      final global = _data.get("global");
      final countries = _data.get("countries");
      final theme = _data.get("theme");
      if (global != null) {
        final globalDecoded = Map<String, dynamic>.from(global);
        _globalSavedData = Global.fromJson(globalDecoded);
      }
      if (countries != null) {
        final countriesDecoded = List<Map<String, dynamic>>.from(
          countries
              .map((hashMap) => Map<String, dynamic>.from(hashMap))
              .toList(),
        );
        _countriesSavedData =
            countriesDecoded.map((c) => Country.fromJson(c)).toList();
      }
      if (theme != null) {
        _cacheDarkTheme = theme;
      }
    }
  }

  // Getters
  bool cacheDarkTheme() {
    return _cacheDarkTheme;
  }

  dynamic get getGlobalData => _globalSavedData;

  dynamic get getCountriesData => _countriesSavedData;

  // Services
  // * Setting Data
  void setCacheData({Global global, List<Country> countries}) async {
    _data.put("global", global.toJson());
    final dataList = countries.map((c) => c.toJson()).toList();
    _data.put("countries", dataList);

    // ? New Cache Data
    _globalSavedData = global;
    _countriesSavedData = countries;
  }

  Future<void> setTheme({bool value}) async {
    _data.put("theme", value);
    _cacheDarkTheme = value;
  }
}
