// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:clientes/ui/views/splash/splash_view.dart';
import 'package:clientes/ui/views/about/about_view.dart';
import 'package:clientes/ui/views/home/home_view.dart';

abstract class Routes {
  static const splashViewRoute = '/';
  static const aboutViewRoute = '/about-view-route';
  static const homeViewRoute = '/home-view-route';
  static const all = {
    splashViewRoute,
    aboutViewRoute,
    homeViewRoute,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashViewRoute:
        if (hasInvalidArgs<SplashViewArguments>(args)) {
          return misTypedArgsRoute<SplashViewArguments>(args);
        }
        final typedArgs = args as SplashViewArguments ?? SplashViewArguments();
        return PageRouteBuilder<dynamic>(
          pageBuilder: (context, animation, secondaryAnimation) =>
              SplashView(key: typedArgs.key),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.slideRightWithFade,
          transitionDuration: const Duration(milliseconds: 400),
        );
      case Routes.aboutViewRoute:
        if (hasInvalidArgs<AboutViewArguments>(args)) {
          return misTypedArgsRoute<AboutViewArguments>(args);
        }
        final typedArgs = args as AboutViewArguments ?? AboutViewArguments();
        return PageRouteBuilder<dynamic>(
          pageBuilder: (context, animation, secondaryAnimation) =>
              AboutView(key: typedArgs.key),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.slideRightWithFade,
          transitionDuration: const Duration(milliseconds: 400),
        );
      case Routes.homeViewRoute:
        if (hasInvalidArgs<HomeViewArguments>(args)) {
          return misTypedArgsRoute<HomeViewArguments>(args);
        }
        final typedArgs = args as HomeViewArguments ?? HomeViewArguments();
        return PageRouteBuilder<dynamic>(
          pageBuilder: (context, animation, secondaryAnimation) =>
              HomeView(key: typedArgs.key),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.slideRightWithFade,
          transitionDuration: const Duration(milliseconds: 400),
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//SplashView arguments holder class
class SplashViewArguments {
  final Key key;
  SplashViewArguments({this.key});
}

//AboutView arguments holder class
class AboutViewArguments {
  final Key key;
  AboutViewArguments({this.key});
}

//HomeView arguments holder class
class HomeViewArguments {
  final Key key;
  HomeViewArguments({this.key});
}
