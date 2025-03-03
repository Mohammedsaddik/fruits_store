import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:fruits_store/Core/Services/fire_base_Auth_service.dart';
import 'package:fruits_store/Core/errors/excepyions.dart';
import 'package:fruits_store/Core/errors/failers.dart';
import 'package:fruits_store/Features/Auth/data/models/user_model.dart';
import 'package:fruits_store/Features/Auth/domain/entites/user_entites.dart';
import 'package:fruits_store/Features/Auth/domain/repos/auth_repo.dart';

class AuthRepoImp implements AuthRepo {
  final FirebaseAuthServise firebaseAuthServise;

  AuthRepoImp({required this.firebaseAuthServise});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String name, String email, String phone, String password) async {
    try {
      var user = await firebaseAuthServise.createUserWithEmailAndPass(
          email: email, password: password);
      return Right(
        UserModel.fromFireBaseUser(user),
      );
    } on CustomException catch (e) {
      return Left(
        ServerFailure(
          message: e.message,
        ),
      );
    } catch (e) {
      log("Exception in createUserWithEmailAndPassword ${e.toString()}");
      return left(
        const ServerFailure(message: " حدث خطأ ماالرجاء المحاولة في وقت لاحق"),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInUserWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthServise.signInWithEmailAndPass(
        email: email,
        password: password,
      );
      return Right(
        UserModel.fromFireBaseUser(user),
      );
    } on CustomException catch (e) {
      return Left(
        ServerFailure(
          message: e.message,
        ),
      );
    } catch (e) {
      log("Exception in signInUserWithEmailAndPassword ${e.toString()}");
      return left(const ServerFailure(
          message: " حدث خطأ ماالرجاء المحاولة في وقت لاحق"));
    }
  }
}
