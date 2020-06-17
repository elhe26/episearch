import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as services;

import 'app/app.dart';
import 'app/locator.dart';
import 'utils/flavors.dart';
import 'utils/config_reader.dart';
import 'ui/shared/setup_dialog_ui.dart';

Future<void> mainCommon(Flavor flavor) async {
  // * Llamar esta funcion si main es asincrono
  WidgetsFlutterBinding.ensureInitialized();

  //  * Soporte orientacion vertical (Portrait)
  await services.SystemChrome.setPreferredOrientations(
    [
      services.DeviceOrientation.portraitUp,
    ],
  );

  // * Obteniendo data CI/CD
  await ConfigReader.initialize();

  // * Obteniendo  Localizador de Dependencias
  configure();

  // * Custom Dialog
  setupDialogUI();

  // * Declaracion de variables.
  Color primaryColor;

  // * Configuracion flavors.
  switch (flavor) {
    case Flavor.PRODUCTION:
      primaryColor = Colors.blue;
      break;
    case Flavor.DEVELOPMENT:
      primaryColor = Colors.red;
      break;
    default:
      primaryColor = Colors.black;
  }

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => EpiSearchApp(primaryColor: primaryColor),
    ),
  );
}
