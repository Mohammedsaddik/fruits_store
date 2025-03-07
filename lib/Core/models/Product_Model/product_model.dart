import 'dart:io';

import 'package:fruits_store/Core/Entites/Product_Entity/Product_Entity.dart';

class ProductModel {
  final String name;
  final String code;
  final String description;
  final num price;

  String? imageUrl;
  final int expirationsMonths;
  final int numberOfCalories;
  final num avgRating = 0;
  final num ratingCount = 0;
  final int unitAmount;
  final int sellingCount;

  ProductModel({
    required this.name,
    required this.code,
    required this.description,
    required this.price,
    required this.expirationsMonths,
    required this.numberOfCalories,
    required this.unitAmount,
    this.imageUrl,
    this.sellingCount = 0,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      code: json['code'],
      description: json['description'],
      expirationsMonths: json['expirationsMonths'],
      numberOfCalories: json['numberOfCalories'],
      price: json['price'],
      unitAmount: json['unitAmount'],
      imageUrl: json['imageUrl'],
      sellingCount: json['sellingCount'],
    );
  }
  ProductEntity toEntity() {
    return ProductEntity(
      name: name,
      code: code,
      description: description,
      price: price,
      expirationsMonths: expirationsMonths,
      numberOfCalories: numberOfCalories,
      unitAmount: unitAmount,
      imageUrl: imageUrl,
    );
  }

  toJson() {
    return {
      'name': name,
      'code': code,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'expirationsMonths': expirationsMonths,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
    };
  }
}
