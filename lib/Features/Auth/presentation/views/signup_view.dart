import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_store/Core/Services/get_it.dart';
import 'package:fruits_store/Core/Widgets/custom_app_bar.dart';
import 'package:fruits_store/Features/Auth/domain/repos/auth_repo.dart';
import 'package:fruits_store/Features/Auth/presentation/manager/signup_Cupit/signup_cubit.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/SignUpViewBodyBlocConsumer.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'SignUpView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: BuildAppBar(
          context,
          title: "حساب جديد",
          showNotificationItem: false,
        ),
        body: SignUpViewBodyBlocConsumer(),
      ),
    );
  }
}
