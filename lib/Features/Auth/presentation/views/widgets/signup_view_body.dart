import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_store/Core/Widgets/custam_snak_bar.dart';
import 'package:fruits_store/Core/Widgets/custom_button.dart';
import 'package:fruits_store/Core/Widgets/custom_text_field.dart';
import 'package:fruits_store/Features/Auth/presentation/manager/signup_Cupit/signup_cubit.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/PasswordFeild.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/termes_and_conditions_widget.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    AutovalidateMode autovalidateMode = AutovalidateMode.onUserInteraction;
    late String email, password, name, phone;
    bool isTermsAccepted = false;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 24.0),
              CustomTextFormField(
                onSaved: (value) {
                  name = value!;
                },
                hintText: "  الاسم كامل",
                textInputType: TextInputType.name,
              ),
              SizedBox(height: 16.0),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: " البريد الالكتروني",
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.0),
              CustomTextFormField(
                onSaved: (value) {
                  phone = value!;
                },
                hintText: " رقم الهاتف",
                textInputType: TextInputType.phone,
              ),
              SizedBox(height: 16.0),
              PasswordFeild(
                onSaved: (value) {
                  password = value!;
                },
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (isTermsAccepted) {
                      formKey.currentState!.save();
                      context
                          .read<SignupCubit>()
                          .createuserWithEmailAndPassword(
                              name, email, phone, password);
                    } else {
                      showBar(context, "يجب قبول الشروط والاحكام");
                    }
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              SizedBox(height: 26.0),
              HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
