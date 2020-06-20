import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/locator.dart';
import '../../../app/routes.gr.dart';
import '../../../services/data_cache_service.dart';

class SplashViewModel extends BaseViewModel {
  // * Services
  NavigationService _navigationService = locator<NavigationService>();
  DataCacheService _dataCacheService = locator<DataCacheService>();

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
}
