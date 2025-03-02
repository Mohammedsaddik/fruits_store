import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_store/Core/Widgets/custom_button.dart';
import 'package:fruits_store/Core/utils/app_colors.dart';
import 'package:fruits_store/Core/utils/app_images.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';
import 'package:fruits_store/constants.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
          ),
        ),
        const SizedBox(
          height: 29.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
          child: CustomButton(
            onTap: () {},
            text: "إبدأ الأن",
          ),
        ),
        const SizedBox(
          height: 43.0,
        ),
      ],
    );
  }
}

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          Image: Assets.imagesPageViewItem1Image,
          BackGroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subTitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("مرحبًا بك في ", style: TextStyles.bold23),
              Text("HUB",
                  style: TextStyles.bold23
                      .copyWith(color: AppColors.secondaryColor)),
              Text(
                "Fruit",
                style:
                    TextStyles.bold23.copyWith(color: AppColors.primaryColor),
              ),
            ],
          ),
        ),
        const PageViewItem(
          Image: Assets.imagesPageViewItem2Image,
          BackGroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subTitle:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          title: Text(
            'ابحث وتسوق',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF0C0D0D),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.Image,
      required this.BackGroundImage,
      required this.subTitle,
      required this.title});
  final String Image, BackGroundImage, subTitle;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  BackGroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: SvgPicture.asset(
                  Image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "تخطي",
                  style: TextStyles.regular13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 65.0,
        ),
        title,
        const SizedBox(
          height: 24.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            style: TextStyles.semiBold13.copyWith(
              color: const Color(0xFF4E5556),
            ),
            subTitle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
