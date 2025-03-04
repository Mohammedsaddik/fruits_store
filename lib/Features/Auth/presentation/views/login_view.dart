import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_store/Core/Services/get_it.dart';
import 'package:fruits_store/Core/Widgets/custom_app_bar.dart';
import 'package:fruits_store/Features/Auth/domain/repos/auth_repo.dart';
import 'package:fruits_store/Features/Auth/presentation/manager/signin_cupit/signin_cubit.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/LoginViewBlocConsumer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = "LoginView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(
        getIt.get<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: BuildAppBar(
          showNotificationItem: false,
          context,
          title: "تسجيل الدخول",
        ),
        body: LoginViewBlocConsumer(),
      ),
    );
  }
}
