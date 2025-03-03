import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_store/Core/Services/shared_prefrences.dart';
import 'package:fruits_store/Core/Widgets/custom_button.dart';
import 'package:fruits_store/Core/utils/app_colors.dart';
import 'package:fruits_store/Features/Auth/presentation/views/login_view.dart';
import 'package:fruits_store/Features/OnBoarding_Screen/Presentation/views/widgets/OnBoardingPageView.dart';
import 'package:fruits_store/constants.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          position: currentPage.toDouble(),
          decorator: DotsDecorator(
            color: AppColors.primaryColor.withOpacity(0.5),
            activeColor: AppColors.primaryColor,
            size: const Size(8.0, 8.0),
            activeSize: const Size(12.0, 12.0),
            spacing: const EdgeInsets.all(4.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        const SizedBox(
          height: 29.0,
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 150),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(
                scale: animation,
                child: child,
              ),
            );
          },
          child: currentPage == 0
              ? const SizedBox.shrink() // Empty widget when hidden
              : Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kHorizintalPadding),
                  child: CustomButton(
                    key: const ValueKey(
                        "startButton"), // Important for AnimatedSwitcher
                    onPressed: () {
                      Prefs.setBool(kIsOnBoardingViewSeen, true);
                      Navigator.pushReplacementNamed(
                          context, LoginView.routeName);
                    },
                    text: "إبدأ الأن",
                  ),
                ),
        ),
        const SizedBox(
          height: 40.0,
        ),
      ],
    );
  }
}
