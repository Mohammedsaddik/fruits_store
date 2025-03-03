part of 'signup_cubit.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class SignupSuccess extends SignupState {
  final UserEntity userEntites;

  SignupSuccess({required this.userEntites});
}

class SignupFailer extends SignupState {
  final String errorMessage;

  SignupFailer({required this.errorMessage});
}
