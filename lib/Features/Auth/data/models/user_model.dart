import 'dart:convert';

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

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'uId': uId,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json["name"],
      email: json["email"],
      phone: json["phone"],
      uId: json["uId"],
    );
  }

  factory UserModel.fromEntity(UserEntity user) {
    return UserModel(
      email: user.email,
      name: user.name,
      uId: user.uId,
      phone: user.phone,
    );
  }
}
