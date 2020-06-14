import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:clientes/ui/views/about/about_view.dart';
import 'package:clientes/ui/views/home/home_view.dart';
import 'package:clientes/ui/views/splash/splash_view.dart';

@CustomAutoRouter(
    transitionsBuilder: TransitionsBuilders.slideRightWithFade,
    durationInMilliseconds: 400)
class $Router {
  @initial
  SplashView splashViewRoute;

  AboutView aboutViewRoute;

  HomeView homeViewRoute;
}
