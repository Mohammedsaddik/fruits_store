import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_store/Core/utils/app_colors.dart';
import 'package:fruits_store/Core/utils/app_images.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox(
      {super.key, required this.isChecked, required this.onChecked});
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        width: 26.0,
        height: 26.0,
        duration: const Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.lightPrimaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.50,
                color:
                    isChecked ? Colors.transparent : const Color(0xFFDCDEDE)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: isChecked
              ? SvgPicture.asset(Assets.imagesCheck)
              : const SizedBox(),
        ),
      ),
    );
  }
}
