import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InactiveItem extends StatelessWidget {
  const InactiveItem({super.key, required this.Image});
  final String Image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: SvgPicture.asset(Image),
    );
  }
}
