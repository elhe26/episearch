import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'locator.dart';
import '../services/api_service.dart';
import '../services/analytics_service.dart';
import '../services/data_cache_service.dart';
import '../services/theme_manager.dart';
import '../services/device_info_service.dart';
import '../services/vibration_service.dart';
import '../models/country.dart';
import '../utils/last_updated_status_formatter.dart';
import '../utils/about_text.dart' as about;

class EpiSearchViewModel extends BaseViewModel {
  // * Services
  final _dialogService = locator<DialogService>();
  final _dataCacheService = locator<DataCacheService>();
  final _apiService = locator<APIService>();
  final _themeManager = locator<ThemeManager>();
  final _analytics = locator<AnalyticsService>();
  final _deviceInfo = locator<DeviceInfoService>();
  final _vibration = locator<VibrationService>();

  // * Variables
  String _country = "Dominican Republic";

  // * Getters
  bool get canVibrate => _vibration.canVibrate;
  String get flagCode => countryData?.countryCode?.toLowerCase();
  String get countryName => _country;
  bool get isDarkTheme => _dataCacheService.cacheDarkTheme();
  ThemeData get theme => _themeManager.themeData;
  ThemeData get systemDarkMode => _themeManager.systemDarkMode();
  List<String> get countries =>
      _apiService?.countries?.map((country) => country.country)?.toList();

  // * Global data
  String get totalConfirmed => StatusFormatter.numberFormatter(
        number: _apiService?.global?.totalConfirmed,
      );
  String get totalDeaths => StatusFormatter.numberFormatter(
        number: _apiService?.global?.totalDeaths,
      );
  String get totalRecovered => StatusFormatter.numberFormatter(
      number: _apiService?.global?.totalRecovered);
  String get newConfirmed => StatusFormatter.numberFormatter(
        number: _apiService?.global?.newConfirmed,
      );
  String get newDeaths => StatusFormatter.numberFormatter(
        number: _apiService?.global?.newDeaths,
      );
  String get newRecovered => StatusFormatter.numberFormatter(
        number: _apiService?.global?.newRecovered,
      );

  String get dateFormatted => StatusFormatter.lastUpdatedStatusText(
      lastUpdated: _apiService?.global?.date);

  // * Local Data
  Country get countryData => _apiService?.countries
      ?.where((country) => country.country == _country)
      ?.first;
  String get localTotalConfirmed => StatusFormatter.numberFormatter(
        number: countryData?.totalConfirmed,
      );
  String get localTotalDeaths => StatusFormatter.numberFormatter(
        number: countryData?.totalDeaths,
      );
  String get localTotalRecovered => StatusFormatter.numberFormatter(
        number: countryData?.totalRecovered,
      );
  String get localNewConfirmed => StatusFormatter.numberFormatter(
        number: countryData?.newConfirmed,
      );
  String get localNewDeaths => StatusFormatter.numberFormatter(
        number: countryData?.newDeaths,
      );
  String get localNewRecovered => StatusFormatter.numberFormatter(
        number: countryData?.newRecovered,
      );

  String get localDateFormatted => StatusFormatter.lastUpdatedStatusFromText(
        date: countryData?.date,
      );

  // * Setters
  set countryName(String value) {
    _country = _apiService.countries
        .where((country) => country.country == value)
        .first
        .country;
    notifyListeners();
  }

  // Helpers
  Future _launchURL({String url, String name}) async {
    if (await canLaunch(url)) {
      await launch(url);
      return true;
    } else {
      return "No es posible lanzar perfil de $name";
    }
  }

  // * Business Logic
  void initialize() async {
    final response = _dataCacheService.cacheDarkTheme();
    _themeManager.setThemeData(isDarkTheme: response);
    _vibration.initialize();
    notifyListeners();
  }

  void aboutDialog() async {
    var response = await _dialogService.showCustomDialog(
      title: about.title,
      description: about.description,
      imageUrl: about.imageUrl,
      barrierDismissible: true,
    );

    if (response.confirmed) {
      var name = response.responseData.first;
      var url = about.brandsLnk[response.responseData.first];
      var value = await _launchURL(
        name: name,
        url: url,
      );

      if (value is bool) {
      } else {
        await _dialogService.showDialog(
          title: "Error",
          description: value,
          barrierDismissible: true,
        );
      }
    }
  }

  void setDarkTheme({bool value}) async {
    await _dataCacheService.setTheme(value: value);
    _themeManager.setThemeData(isDarkTheme: value);
    notifyListeners();
  }

  Future getSummaryData() async {
    setBusy(true);

    final response = await _apiService.summary();
    final params = _deviceInfo.deviceInfo;
    await _analytics.logRefresh(
      refreshed: true,
      params: params,
    );

    setBusy(false);

    if (response is bool) {
      if (response) {
        final globalValue = _apiService.global;
        final countriesValue = _apiService.countries;
        _dataCacheService.setCacheData(
          global: globalValue,
          countries: countriesValue,
        );
        notifyListeners();
      } else {
        await _dialogService.showDialog(
          title: "Error de conexion",
          description: "Favor revisar conexion de internet.",
        );
      }
    } else {
      await _dialogService.showDialog(
        title: "Error de Servicio.",
        description: response,
      );
    }
  }

  void vibration() {
    _vibration.vibrate();
    notifyListeners();
  }

  void dummyData() {}
}
