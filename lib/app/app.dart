import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'locator.dart';
import 'routes.gr.dart';

class EpiSearchApp extends StatelessWidget {
  final Color primaryColor;

  const EpiSearchApp({Key key, this.primaryColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EpiSearch",
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.of(context).locale,
      initialRoute: Routes.splashViewRoute,
      onGenerateRoute: Router().onGenerateRoute,
      theme: ThemeData(primaryColor: primaryColor),
    );
  }
}
