import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'locator.dart';
import '../services/data_cache_service.dart';
import '../utils/about_text.dart' as about;

class EpiSearchViewModel extends BaseViewModel {
  //  Services
  final _dialogService = locator<DialogService>();
  final _dataCacheService = locator<DataCacheService>();

  // Variables

  // Getters
  bool get isDarkTheme => _dataCacheService.cacheDarkTheme();

  // Setters
  void setDarkTheme({bool value}) async {
    await _dataCacheService.setTheme(value: value);
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
    await _dataCacheService.getTheme();
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
    } else {}
  }
}
