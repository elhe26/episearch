import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'splash_viewmodel.dart';
import '../../shared/app_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.nonReactive(
      builder: (context, model, child) => SplashScreen.callback(
        name: model.logo,
        until: () {
          model.getAPIData();
          return Future.delayed(Duration(seconds: 5));
        },
        onSuccess: (_) => model.navigateToHome(),
        onError: (error, stacktrace) {},
        startAnimation: "intro",
        loopAnimation: "intro",
        endAnimation: "intro",
        backgroundColor: whiteMonoLetter,
      ),
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
