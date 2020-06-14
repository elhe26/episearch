import 'package:flutter/material.dart';

import 'utils/flavors.dart';
import 'app/app.dart';

Future<void> mainCommon(Flavor flavor) async {
  
  
  // * 
  Color primaryColor;

  // * 
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
