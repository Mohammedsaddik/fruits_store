import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.ImgUrl,
  });

  final String ImgUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(ImgUrl);
  }
}
