import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_store/Features/Auth/domain/entites/user_entites.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.email,
    required super.name,
    required super.uId,
    required super.phone,
  });

  factory UserModel.fromFireBaseUser(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      phone: user.phoneNumber ?? '',
      uId: user.uid,
    );
  }
}
