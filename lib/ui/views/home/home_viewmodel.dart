import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/locator.dart';

class HomeViewModel extends BaseViewModel {
  //  Services
  final _navigationService = locator<NavigationService>();

  // Variables
  String _title = "Home View";

  // Getters
  String get title => _title;

  // View Model interface
}
