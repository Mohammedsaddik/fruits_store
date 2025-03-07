import 'dart:io';

import 'package:fruits_store/Core/Entites/Product_Entity/Product_Entity.dart';
import 'package:fruits_store/Core/Entites/Punner_Entity/punner_entity.dart';

class PunnerModel {
  final String namePunnerOne;
  final String namePunnerTwo;

  String? imageUrl;

  PunnerModel({
    required this.namePunnerOne,
    required this.namePunnerTwo,
    this.imageUrl,
  });
  factory PunnerModel.fromJson(Map<String, dynamic> json) {
    return PunnerModel(
        namePunnerOne: json['namePunnerOne'],
        namePunnerTwo: json['namePunnerTwo'],
        imageUrl: json['imageUrl']);
  }

  PunnerEntity toEntity() {
    return PunnerEntity(
      namePunnerOne: namePunnerOne,
      namePunnerTwo: namePunnerTwo,
      imageUrl: imageUrl,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'namePunnerOne': namePunnerOne,
      'namePunnerTwo': namePunnerTwo,
      'imageUrl': imageUrl,
    };
  }
}
