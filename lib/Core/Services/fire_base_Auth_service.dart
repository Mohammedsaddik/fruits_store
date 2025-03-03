import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_store/Core/errors/excepyions.dart';

class FirebaseAuthServise {
  Future<User> createUserWithEmailAndPass({
    required String email,
    required String password,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in createUserWithEmailAndPassword ${e.toString()}");
      if (e.code == 'weak-password') {
        throw const CustomException(' الرقم السري ضعيف جدا');
      } else if (e.code == 'email-already-in-use') {
        throw const CustomException(
            'لقد قمت بالتسجيل مسبقا.الرجاء تسجيل الدخول');
      } else if (e.code == 'network- request failed') {
        throw const CustomException("لا يوجد اتصال بالانترنت");
      } else {
        throw const CustomException();
      }
    } catch (e) {
      log("Exception in createUserWithEmailAndPassword ${e.toString()}");
      throw const CustomException("Something went wrong");
    }
  }

  Future<User> signInWithEmailAndPass({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in signInWithEmailAndPass ${e.toString()}");
      if (e.code == 'user-not-found') {
        throw const CustomException('هذا المستخدم غير موجود');
      } else if (e.code == 'wrong-password') {
        throw const CustomException('كلمة السر او البريد الإلكتروني غير صحيح ');
      } else if (e.code == 'network- request failed') {
        throw const CustomException("لا يوجد اتصال بالانترنت");
      } else {
        throw const CustomException();
      }
    } catch (e) {
      log("Exception in signInWithEmailAndPass ${e.toString()}");
      throw const CustomException("Something went wrong");
    }
  }
}
