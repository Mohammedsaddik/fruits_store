import 'package:flutter/material.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      text,
      style: TextStyles.bold16,
    ));
  }
}
