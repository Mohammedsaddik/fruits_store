import 'package:dartz/dartz.dart';
import 'package:fruits_store/Core/errors/failers.dart';
import 'package:fruits_store/Features/Auth/domain/entites/user_entites.dart';
import 'package:fruits_store/Features/Auth/domain/repos/auth_repo.dart';

class AuthRepoImp implements AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String name, String email, String phone, String password) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }
}
