import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/locator.dart';
import '../../../app/routes.gr.dart';
import '../../../services/api_service.dart';

class SplashViewModel extends BaseViewModel {
  // * Services
  NavigationService _navigationService = locator<NavigationService>();
  APIService _apiService = locator<APIService>();
  DialogService _dialogService = locator<DialogService>();

  // * Variables
  String _logo = "assets/logo/EpiSearch.flr";

  // * Getters
  String get logo => _logo;

  // * Business Logic
  Future navigateToHome() async {
    await _navigationService.replaceWith(Routes.homeViewRoute);
  }

  Future getAPIData() async {
    setBusy(true);

    final response = await _apiService.summary();

    setBusy(false);

    if (response is bool) {
      if (response) {
        print("Global Values: ${_apiService.global}");
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
