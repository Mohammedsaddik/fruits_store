import 'package:flutter/material.dart';
import 'package:fruits_store/Core/utils/app_colors.dart';
import 'package:fruits_store/Core/utils/app_images.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xFFF3F5F7),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              right: 0.0,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline),
              ),
            ),
            Positioned.fill(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Image.asset(Assets.imagesWatermelonTest),
                  const SizedBox(
                    height: 2.0,
                  ),
                  ListTile(
                    title: Text(
                      "بطيخ",
                      textAlign: TextAlign.right,
                      style: TextStyles.bold16.copyWith(
                        color: const Color(0xFF0C0D0D),
                      ),
                    ),
                    trailing: GestureDetector(
                      onTap: () {},
                      child: const CircleAvatar(
                        backgroundColor: AppColors.primaryColor,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    subtitle: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '20جنية ',
                            style: TextStyles.bold16
                                .copyWith(color: const Color(0xFFF4A91F)),
                          ),
                          TextSpan(
                            text: '/',
                            style: TextStyles.bold13
                                .copyWith(color: const Color(0xFFF8C76D)),
                          ),
                          TextSpan(
                            text: 'الكيلو',
                            style: TextStyles.semiBold13.copyWith(
                              color: const Color(0xFFF8C76D),
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
