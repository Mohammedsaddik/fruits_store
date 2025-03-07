import 'package:flutter/material.dart';
import 'package:fruits_store/Features/Auth/presentation/views/login_view.dart';
import 'package:fruits_store/Features/Auth/presentation/views/signup_view.dart';
import 'package:fruits_store/Features/OnBoarding_Screen/Presentation/views/onboarding_view.dart';
import 'package:fruits_store/Features/Splash_Screen/presentation/views/splash_view.dart';
import 'package:fruits_store/Features/home/presentation/views/main_view.dart';
import 'package:fruits_store/Features/home/presentation/views/product_view.dart';

Route<dynamic> onGeberateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());
    case ProductView.routeName:
      return MaterialPageRoute(builder: (context) => const ProductView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
