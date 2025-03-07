import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_store/Core/Services/data_base_service.dart';
import 'package:fruits_store/Core/Services/fire_base_Auth_service.dart';
import 'package:fruits_store/Core/Services/shared_prefrences.dart';
import 'package:fruits_store/Core/errors/excepyions.dart';
import 'package:fruits_store/Core/errors/failers.dart';
import 'package:fruits_store/Core/utils/backEnd_endPoit.dart';
import 'package:fruits_store/Features/Auth/data/models/user_model.dart';
import 'package:fruits_store/Features/Auth/domain/entites/user_entites.dart';
import 'package:fruits_store/Features/Auth/domain/repos/auth_repo.dart';
import 'package:fruits_store/constants.dart';

class AuthRepoImp implements AuthRepo {
  final FirebaseAuthServise firebaseAuthServise;
  final DataBaseService dataBaseService;

  AuthRepoImp(
      {required this.dataBaseService, required this.firebaseAuthServise});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String name, String email, String phone, String password) async {
    User? user;
    try {
      var user = await firebaseAuthServise.createUserWithEmailAndPass(
        email: email,
        password: password,
      );
      var userEntity = UserEntity(
        email: email,
        name: name,
        uId: user.uid,
        phone: phone,
      );
      await addUserData(user: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        return await firebaseAuthServise.deletUser();
      }
      return Left(
        ServerFailure(
          message: e.message,
        ),
      );
    } catch (e) {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        return await firebaseAuthServise.deletUser();
      }
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
      var userEntites = await getUserData(uid: user.uid);
      await saveUserData(user: userEntites);
      return Right(
        userEntites,
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

  @override
  Future<Either<Failure, UserEntity>> signInUserWithGooglle() async {
    User? user;
    try {
      user = await firebaseAuthServise.signInWithGoogle();
      var userEntity = UserModel.fromFireBaseUser(user);
      var isDataExcist = await dataBaseService.CheckisDataExiext(
        path: DataBaseEndPoint.getUserData,
        DocusUid: user.uid,
      );
      if (isDataExcist) {
        await getUserData(uid: user.uid);
      } else {
        await addUserData(user: userEntity);
      }
      await saveUserData(user: userEntity);
      return Right(
        userEntity,
      );
    } on CustomException catch (e) {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        return await firebaseAuthServise.deletUser();
      }
      return Left(
        ServerFailure(
          message: e.message,
        ),
      );
    } catch (e) {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        return await firebaseAuthServise.deletUser();
      }
      log("Exception in signInUserWithGooglle ${e.toString()}");
      return left(const ServerFailure(
          message: " حدث خطأ ماالرجاء المحاولة في وقت لاحق"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInUserWithFaceBook() async {
    User? user;
    try {
      user = await firebaseAuthServise.signInWithFacebook();

      var userEntity = UserModel.fromFireBaseUser(user);
      await addUserData(user: userEntity);
      await saveUserData(user: userEntity);
      return Right(
        userEntity,
      );
    } on CustomException catch (e) {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        return await firebaseAuthServise.deletUser();
      }
      return Left(
        ServerFailure(
          message: e.message,
        ),
      );
    } catch (e) {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        return await firebaseAuthServise.deletUser();
      }
      log("Exception in signInUserWithGooglle ${e.toString()}");
      return left(const ServerFailure(
          message: " حدث خطأ ماالرجاء المحاولة في وقت لاحق"));
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await dataBaseService.addData(
      path: DataBaseEndPoint.addUserData,
      data: UserModel.fromEntity(user).toMap(),
      docimentId: user.uId,
    );
  }

  @override
  Future<UserEntity> getUserData({required String uid}) async {
    var userData = await dataBaseService.getData(
        path: DataBaseEndPoint.getUserData, documentId: uid);
    return UserModel.fromJson(userData);
  }

  @override
  Future saveUserData({required UserEntity user}) async {
    var jsonData = jsonEncode(
      UserModel.fromEntity(user).toMap(),
    );
    await Prefs.setString(kUserData, jsonData);
  }
}
