import 'package:dartz/dartz.dart';
import 'package:fruits_store/Core/errors/failers.dart';
import 'package:fruits_store/Features/Auth/domain/entites/user_entites.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String name,
    String email,
    String phone,
    String password,
  );
  Future<Either<Failure, UserEntity>> signInUserWithEmailAndPassword(
    String email,
    String password,
  );
}
