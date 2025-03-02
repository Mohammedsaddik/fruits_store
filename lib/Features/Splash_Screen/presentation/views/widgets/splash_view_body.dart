import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_store/Core/Services/shared_prefrences.dart';
import 'package:fruits_store/Core/utils/app_images.dart';
import 'package:fruits_store/Features/Auth/presentation/views/login_view.dart';
import 'package:fruits_store/Features/OnBoarding_Screen/Presentation/views/onboarding_view.dart';
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
          Navigator.pushReplacementNamed(context, LoginView.routeName);
        } else {
          Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
        }
      },
    );
  }
}

// void executeNavigation() {
//   bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);

//   Future.delayed(
//     const Duration(seconds: 2),
//     () {
//       String nextRoute = isOnBoardingViewSeen ? LoginView.routeName : OnBoardingView.routeName;

//       Navigator.pushReplacement(
//         context,
//         PageRouteBuilder(
//           transitionDuration: const Duration(milliseconds: 700),
//           pageBuilder: (context, animation, secondaryAnimation) =>
//               isOnBoardingViewSeen ? const LoginView() : const OnBoardingView(),
//           transitionsBuilder: (context, animation, secondaryAnimation, child) {
//             var curve = Curves.easeInOut;

//             var fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
//               CurvedAnimation(parent: animation, curve: curve),
//             );

//             var scaleAnimation = Tween<double>(begin: 0.8, end: 1).animate(
//               CurvedAnimation(parent: animation, curve: curve),
//             );

//             return FadeTransition(
//               opacity: fadeAnimation,
//               child: ScaleTransition(
//                 scale: scaleAnimation,
//                 child: child,
//               ),
//             );
//           },
//         ),
//       );
//     },
//   );
// }
