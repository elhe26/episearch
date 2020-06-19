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

  // * Configuracion flavors.

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => EpiSearchApp(),
    ),
  );
}
