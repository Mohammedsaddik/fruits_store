import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_store/Core/Widgets/custam_snak_bar.dart';
import 'package:fruits_store/Features/Auth/presentation/manager/signin_cupit/signin_cubit.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/login_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginViewBlocConsumer extends StatelessWidget {
  const LoginViewBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          showBar(context, "تم تسجيل الدخول بنجاح");
        }
        if (state is SigninError) {
          showBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SigninLoading ? true : false,
          child: LoginViewBody(),
        );
      },
    );
  }
}
