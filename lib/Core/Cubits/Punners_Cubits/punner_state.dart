part of 'punner_cubit.dart';

@immutable
abstract class PunnerState {}

class PunnerInitial extends PunnerState {}

class PunnerLoading extends PunnerState {}

class PunnerError extends PunnerState {
  final String errorMessage;

  PunnerError({required this.errorMessage});
}

class PunnerSuccess extends PunnerState {
  final List<PunnerEntity> punners;

  PunnerSuccess(this.punners);
}
