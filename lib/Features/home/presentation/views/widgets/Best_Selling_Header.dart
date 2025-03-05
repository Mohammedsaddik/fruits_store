import 'package:flutter/material.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Text(
            'الأكثر مبيعًا',
            textAlign: TextAlign.right,
            style: TextStyles.bold13.copyWith(
              color: const Color(0xFF0C0D0D),
            ),
          ),
          const Spacer(),
          Text(
            'المزيد',
            textAlign: TextAlign.center,
            style:
                TextStyles.regular13.copyWith(color: const Color(0xFF949D9E)),
          )
        ],
      ),
    );
  }
}
