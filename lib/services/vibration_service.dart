import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class VibrationService {
  bool _canVibrate = false;

  bool get canVibrate => _canVibrate;

  void vibrate() {
    Vibrate.vibrate();
  }

  initialize() async {
    _canVibrate = await Vibrate.canVibrate;
  }
}
