import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app_viewmodel.dart';
import 'locator.dart';
import 'routes.gr.dart';

class EpiSearchApp extends StatelessWidget {
  const EpiSearchApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EpiSearchViewModel>.reactive(
      builder: (context, model, child) => MaterialApp(
        title: "EpiSearch",
        navigatorKey: locator<NavigationService>().navigatorKey,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.of(context).locale,
        initialRoute: Routes.splashViewRoute,
        onGenerateRoute: Router().onGenerateRoute,
        theme: model.theme,
        darkTheme: model.systemDarkMode,
      ),
      viewModelBuilder: () => EpiSearchViewModel(),
      onModelReady: (model) => model.initialize(),
    );
  }
}
