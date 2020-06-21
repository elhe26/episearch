import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class VibrationService {
  bool _canVibrate = false;

  bool get canVibrate => _canVibrate;

  void vibrate() {
    // FeedbackType _type = FeedbackType.light;
    // Vibrate.vibrate();
    Vibrate.feedback(FeedbackType.light);
  }

  initialize() async {
    _canVibrate = await Vibrate.canVibrate;
  }
}
