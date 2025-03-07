import 'dart:io';

class PunnerEntity {
  final String namePunnerOne;
  final String namePunnerTwo;

  String? imageUrl;

  PunnerEntity({
    required this.namePunnerOne,
    required this.namePunnerTwo,
    this.imageUrl,
  });
}
