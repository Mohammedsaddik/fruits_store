import 'package:flutter/material.dart';
import 'package:fruits_store/Core/Widgets/custom_app_bar.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/signup_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'SignUpView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(
        context,
        title: "حساب جديد",
        showNotificationItem: false,
      ),
      body: SignUpViewBody(),
    );
  }
}
