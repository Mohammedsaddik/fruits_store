import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_store/Core/Services/fire_base_Auth_service.dart';
import 'package:fruits_store/Core/Services/fire_store_servise.dart';
import 'package:fruits_store/Core/Services/shared_prefrences.dart';
import 'package:fruits_store/Core/utils/app_images.dart';
import 'package:fruits_store/Features/Auth/presentation/views/login_view.dart';
import 'package:fruits_store/Features/OnBoarding_Screen/Presentation/views/onboarding_view.dart';
import 'package:fruits_store/Features/home/presentation/views/main_view.dart';
import 'package:fruits_store/constants.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void executeNavigation() {
    bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (isOnBoardingViewSeen) {
          var isLogedIn = FirebaseAuthServise().isloggedIn();
          if (isLogedIn) {
            Navigator.pushReplacementNamed(context, MainView.routeName);
          } else {
            Navigator.pushReplacementNamed(context, LoginView.routeName);
          }
        } else {
          Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
        }
      },
    );
  }
}
