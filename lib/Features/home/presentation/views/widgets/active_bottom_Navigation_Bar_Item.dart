import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';

class activeItem extends StatelessWidget {
  const activeItem({super.key, required this.text, required this.image});
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left: 16.0),
        decoration: ShapeDecoration(
          color: const Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: const ShapeDecoration(
                  color: Color(0xFF1B5E37),
                  shape: OvalBorder(),
                ),
                child: Center(child: SvgPicture.asset(image)),
              ),
              const SizedBox(
                width: 4.0,
              ),
              Text(
                text,
                style: TextStyles.semiBold11.copyWith(
                  color: const Color(0xFF1B5E37),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
