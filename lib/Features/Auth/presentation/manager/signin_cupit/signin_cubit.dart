import 'package:bloc/bloc.dart';
import 'package:fruits_store/Features/Auth/domain/entites/user_entites.dart';
import 'package:fruits_store/Features/Auth/domain/repos/auth_repo.dart';
part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  @override
  final AuthRepo authRepo;
  Future<void> loginUser(String email, String Password) async {
    emit(
      SigninLoading(),
    );
    var result = await authRepo.signInUserWithEmailAndPassword(email, Password);
    result.fold(
      (failer) => emit(
        SigninError(errorMessage: failer.message),
      ),
      (userEntites) => emit(
        SigninSuccess(userEntites: userEntites),
      ),
    );
  }

  Future<void> signinWithGoogle() async {
    emit(SigninLoading());
    var result = await authRepo.signInUserWithGooglle();
    result.fold(
      (failure) => emit(
        SigninError(errorMessage: failure.message),
      ),
      (userEntity) => emit(
        SigninSuccess(userEntites: userEntity),
      ),
    );
  }

  Future<void> signinWithFaceBook() async {
    emit(SigninLoading());
    var result = await authRepo.signInUserWithFaceBook();
    result.fold(
      (failure) => emit(
        SigninError(errorMessage: failure.message),
      ),
      (userEntity) => emit(
        SigninSuccess(userEntites: userEntity),
      ),
    );
  }
}
