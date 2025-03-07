import 'dart:convert';

import 'package:fruits_store/Core/Services/shared_prefrences.dart';
import 'package:fruits_store/Features/Auth/data/models/user_model.dart';
import 'package:fruits_store/Features/Auth/domain/entites/user_entites.dart';
import 'package:fruits_store/constants.dart';

UserEntity? getUser() {
  var jsonString = Prefs.getString(kUserData);

  if (jsonString == null || jsonString.isEmpty) {
    print("Error: No user data found.");
    return null; // Return null to prevent JSON parsing errors
  }

  try {
    return UserModel.fromJson(jsonDecode(jsonString));
  } catch (e) {
    print("Error decoding user data: $e");
    return null; // Return null to handle invalid JSON cases
  }
}
