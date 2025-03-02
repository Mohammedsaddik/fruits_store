import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key,
      required this.Image,
      required this.text,
      required this.onPressed});
  final String Image;
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xFFDCDEDE),
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        onPressed: onPressed,
        child: ListTile(
          visualDensity:
              const VisualDensity(vertical: VisualDensity.minimumDensity),
          title: Text(
            text,
            style: TextStyles.semiBold16,
          ),
          leading: SvgPicture.asset(Image),
        ),
      ),
    );
  }
}
