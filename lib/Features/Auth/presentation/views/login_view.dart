import 'package:flutter/material.dart';
import 'package:fruits_store/Core/Widgets/custom_app_bar.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = "LoginView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(
        context,
        title: "تسجيل الدخول",
      ),
      body: LoginViewBody(),
    );
  }
}
