import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics();

  FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  Future logRefresh({bool refreshed, Map<String, dynamic> params}) async {
    try {
      await _analytics.logEvent(
        name: "Refresh",
        parameters: params,
      );
    } catch (e) {
      print("error: ${e.toString()}");
    }
  }
}
