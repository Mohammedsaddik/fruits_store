import 'package:flutter/material.dart';
import 'package:fruits_store/Core/utils/app_colors.dart';
import 'package:fruits_store/Core/utils/app_images.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';
import 'package:fruits_store/Features/OnBoarding_Screen/Presentation/views/widgets/Page_ViewItem.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisiable: true,
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
        PageViewItem(
          isVisiable: false,
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
