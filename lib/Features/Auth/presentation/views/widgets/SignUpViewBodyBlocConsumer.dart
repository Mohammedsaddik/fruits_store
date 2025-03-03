import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_store/Core/Widgets/custam_snak_bar.dart';
import 'package:fruits_store/Features/Auth/presentation/manager/signup_Cupit/signup_cubit.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/signup_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpViewBodyBlocConsumer extends StatelessWidget {
  const SignUpViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          showBar(context, "تم تسجيل الدخول بنجاح");
          Navigator.pop(context);
        }
        if (state is SignupFailer) {
          showBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading ? true : false,
          child: SignUpViewBody(),
        );
      },
    );
  }
}
