import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_store/Core/Widgets/custam_snak_bar.dart';
import 'package:fruits_store/Core/Widgets/custom_button.dart';
import 'package:fruits_store/Core/Widgets/custom_text_field.dart';
import 'package:fruits_store/Core/Widgets/or_didvider.dart';
import 'package:fruits_store/Core/Widgets/social_login_button.dart';
import 'package:fruits_store/Core/utils/app_colors.dart';
import 'package:fruits_store/Core/utils/app_images.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';
import 'package:fruits_store/Features/Auth/presentation/manager/signin_cupit/signin_cubit.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/PasswordFeild.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/dont_hane_an_account_widget.dart';
import 'package:fruits_store/constants.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 24.0,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: " البريد الالكتروني",
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16.0,
              ),
              PasswordFeild(
                onSaved: (value) {
                  password = value!;
                },
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SigninCubit>().loginUser(
                          email,
                          password,
                        );
                  } else {
                    showBar(context, "خطأ في كلمه السر او الايميل");
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
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
                onPressed: () {
                  context.read<SigninCubit>().signinWithGoogle();
                },
                text: "    تسجيل بواسطة جوجل",
                Image: Assets.imagesGoogleIcon,
              ),
              const SizedBox(
                height: 16.0,
              ),
              SocialLoginButton(
                onPressed: () {
                  context.read<SigninCubit>().signinWithFaceBook();
                },
                text: "    تسجيل بواسطة فيسبوك",
                Image: Assets.imagesFacebookIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
