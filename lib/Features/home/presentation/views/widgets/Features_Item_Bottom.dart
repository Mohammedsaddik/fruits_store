import 'package:flutter/material.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';

class FeaturesItemBottom extends StatelessWidget {
  const FeaturesItemBottom({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              4,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: FittedBox(
            child: Text(
              "توسق الأن",
              style: TextStyles.bold13.copyWith(
                color: const Color(0xFF1B5E37),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
