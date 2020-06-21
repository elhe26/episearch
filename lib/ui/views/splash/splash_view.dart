import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.nonReactive(
      builder: (context, model, child) => SplashScreen.callback(
        name: model.isDarkTheme ? model.logoDark : model.logo,
        until: () {
          return Future.delayed(Duration(seconds: 5));
        },
        onSuccess: (_) => model.navigateToHome(),
        onError: (error, stacktrace) {
          model.navigateToHome();
        },
        startAnimation: "intro",
        loopAnimation: "intro",
        endAnimation: "intro",
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      viewModelBuilder: () => SplashViewModel(),
      onModelReady: (model) => model.initialize(),
    );
  }
}
