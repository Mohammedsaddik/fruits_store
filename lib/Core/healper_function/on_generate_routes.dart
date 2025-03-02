import 'package:flutter/material.dart';
import 'package:fruits_store/Features/Splash_Screen/presentation/views/splash_view.dart';

Route<dynamic> onGeberateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
