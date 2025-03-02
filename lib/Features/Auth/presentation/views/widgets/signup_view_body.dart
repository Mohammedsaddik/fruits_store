import 'package:flutter/material.dart';
import 'package:fruits_store/Core/Widgets/custom_button.dart';
import 'package:fruits_store/Core/Widgets/custom_text_field.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/termes_and_conditions_widget.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    late bool isTermsAccepted = false;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 24.0),
            CustomTextFormField(
              onSaved: (value) {},
              hintText: "  الاسم كامل",
              textInputType: TextInputType.name,
            ),
            SizedBox(height: 16.0),
            CustomTextFormField(
              onSaved: (value) {},
              hintText: " البريد الالكتروني",
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),
            CustomTextFormField(
              onSaved: (value) {},
              hintText: " رقم الهاتف",
              textInputType: TextInputType.phone,
            ),
            SizedBox(height: 16.0),
            CustomTextFormField(
              obscureText: true,
              onSaved: (value) {},
              hintText: "كلمة المرور",
              suffixIcon: const Icon(Icons.remove_red_eye),
              textInputType: TextInputType.text,
            ),
            SizedBox(height: 16.0),
            TermesAndConditionsWidget(
              onChecked: (value) {
                isTermsAccepted = value;
              },
            ),
            SizedBox(height: 30.0),
            CustomButton(
              text: "إنشاء حساب جديد",
              onTap: () {},
            ),
            SizedBox(height: 26.0),
            HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
