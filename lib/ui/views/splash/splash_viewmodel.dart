import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/locator.dart';
import '../../../app/routes.gr.dart';
import '../../../services/api_service.dart';
import '../../../services/data_cache_service.dart';

class SplashViewModel extends BaseViewModel {
  // * Services
  NavigationService _navigationService = locator<NavigationService>();
  APIService _apiService = locator<APIService>();
  DialogService _dialogService = locator<DialogService>();
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

  void initialize() async {
    await _dataCacheService.getTheme();
    await getAPIData();
    notifyListeners();
  }

  Future getAPIData() async {
    setBusy(true);

    final response = await _apiService.summary();

    setBusy(false);

    if (response is bool) {
      if (response) {
      } else {
        await _dialogService.showDialog(
          title: "Error de conexion",
          description: "Favor revisar conexion de internet.",
        );
        await _navigationService.replaceWith(Routes.homeViewRoute);
      }
    } else {
      await _dialogService.showDialog(
        title: "Error de Servicio.",
        description: response,
      );
    }
  }
}
