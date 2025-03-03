import 'package:flutter/material.dart';
import 'package:fruits_store/Core/Widgets/custom_button.dart';
import 'package:fruits_store/Core/Widgets/custom_text_field.dart';
import 'package:fruits_store/Core/Widgets/or_didvider.dart';
import 'package:fruits_store/Core/Widgets/social_login_button.dart';
import 'package:fruits_store/Core/utils/app_colors.dart';
import 'package:fruits_store/Core/utils/app_images.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/dont_hane_an_account_widget.dart';
import 'package:fruits_store/constants.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 24.0,
            ),
            CustomTextFormField(
              onSaved: (value) {},
              hintText: " البريد الالكتروني",
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16.0,
            ),
            CustomTextFormField(
              obscureText: true,
              onSaved: (value) {},
              hintText: "كلمة المرور",
              suffixIcon: const Icon(Icons.remove_red_eye),
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32.0,
            ),
            CustomButton(
              onPressed: () {},
              text: "تسجيل دخول",
            ),
            const SizedBox(
              height: 33.0,
            ),
            DontHaveAnAccountWidget(),
            const SizedBox(
              height: 35.0,
            ),
            const OrDivider(),
            const SizedBox(
              height: 16.0,
            ),
            SocialLoginButton(
              onPressed: () {},
              text: "    تسجيل بواسطة جوجل",
              Image: Assets.imagesGoogleIcon,
            ),
            const SizedBox(
              height: 16.0,
            ),
            SocialLoginButton(
              onPressed: () {},
              text: "    تسجيل بواسطة فيسبوك",
              Image: Assets.imagesFacebookIcon,
            ),
          ],
        ),
      ),
    );
  }
}
