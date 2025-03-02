import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';
import 'package:fruits_store/Features/Auth/presentation/views/login_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.Image,
    required this.BackGroundImage,
    required this.subTitle,
    required this.title,
    required this.isVisiable,
  });
  final String Image, BackGroundImage, subTitle;
  final Widget title;
  final bool isVisiable;

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
              Visibility(
                visible: isVisiable,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, LoginView.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      "تخطي",
                      style: TextStyles.regular13.copyWith(
                        color: const Color(0xFF949D9E),
                      ),
                    ),
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
