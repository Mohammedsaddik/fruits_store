import 'package:flutter/material.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Divider(
          color: Color(0xFFDCDEDE),
        )),
        const SizedBox(
          width: 18.0,
        ),
        Text("أو",
            style:
                TextStyles.semiBold16.copyWith(color: const Color(0xFF0C0D0D))),
        const SizedBox(
          width: 18.0,
        ),
        const Expanded(
            child: Divider(
          color: Color(0xFFDCDEDE),
        )),
      ],
    );
  }
}
