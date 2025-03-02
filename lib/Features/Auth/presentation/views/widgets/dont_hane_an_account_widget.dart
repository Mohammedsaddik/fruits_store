import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: " لا تمتلك حساب ؟",
            style:
                TextStyles.semiBold16.copyWith(color: const Color(0xFF949D9E)),
          ),
          TextSpan(
            text: ' ',
            style:
                TextStyles.semiBold16.copyWith(color: const Color(0xFF616A6B)),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () {},
            text: "قم بإنشاء حساب",
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xFF1B5E37),
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
