part of 'signin_cubit.dart';

abstract class SigninState {}

class SigninInitial extends SigninState {}

class SigninLoading extends SigninState {}

class SigninSuccess extends SigninState {
  final UserEntity userEntites;

  SigninSuccess({required this.userEntites});
}

class SigninError extends SigninState {
  final String errorMessage;

  SigninError({required this.errorMessage});
}
