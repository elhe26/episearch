import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/locator.dart';
import '../../../app/routes.gr.dart';
import '../../../services/api_service.dart';
import '../../../services/data_cache_service.dart';

class SplashViewModel extends BaseViewModel {
  // * Services
  final _navigationService = locator<NavigationService>();
  final _dataCacheService = locator<DataCacheService>();
  final _apiService = locator<APIService>();

  // * Variables
  String _logo = "assets/logo/EpiSearch.flr";
  String _logoDarkTheme = "assets/logo/EpiSearch-Dark.flr";

  // * Getters
  String get logo => _logo;
  String get logoDark => _logoDarkTheme;
  bool get isDarkTheme => _dataCacheService.cacheDarkTheme();

  // * Business Logic
  Future navigateToHome() async {
    await _navigationService.replaceWith(Routes.homeViewRoute);
  }

  void initialize() async {
    final global = _dataCacheService.getGlobalData;
    final countries = _dataCacheService.getCountriesData;

    final summaryResponse = await getSummaryData();

    if (!summaryResponse) {
      if (global == null || countries == null) {
      } else {
        _apiService.global = global;
        _apiService.countries = countries;
      }
    }
    notifyListeners();
  }

  Future getSummaryData() async {
    setBusy(true);

    final response = await _apiService.summary();

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
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
