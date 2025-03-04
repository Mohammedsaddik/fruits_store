import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_store/Core/utils/app_images.dart';

void showCustomDialog(
  BuildContext context, {
  required String message,
  TextStyle? textStyle,
}) {
  showDialog(
    context: context,
    builder: (context) {
      Future.delayed(const Duration(milliseconds: 500), () {
        if (context.mounted) {
          Navigator.of(context).pop();
        }
      });

      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(Assets.imagesSuccess),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                message,
                style: textStyle ??
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );
    },
  );
}
