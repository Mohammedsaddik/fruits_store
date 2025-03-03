import 'package:bloc/bloc.dart';
import 'package:fruits_store/Features/Auth/domain/entites/user_entites.dart';
import 'package:fruits_store/Features/Auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';
part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;

  Future<void> createuserWithEmailAndPassword(
    String name,
    String email,
    String phone,
    String password,
  ) async {
    emit(SignupLoading());
    final result = await authRepo.createUserWithEmailAndPassword(
        name, email, phone, password);
    result.fold(
      (failer) => emit(
        SignupFailer(errorMessage: failer.message),
      ),
      (userEntites) => emit(
        SignupSuccess(userEntites: userEntites),
      ),
    );
  }
}
