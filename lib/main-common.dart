import 'package:flutter/material.dart';

import 'utils/flavors.dart';
import 'app/app.dart';

Future<void> mainCommon(Flavor flavor) async {
  // * Llamar esta funcion si main es asincrono
  WidgetsFlutterBinding.ensureInitialized();

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

  runApp(EpiSearchApp());
}
