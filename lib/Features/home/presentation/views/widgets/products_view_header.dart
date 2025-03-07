import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_store/Core/utils/app_images.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';

class ProductsViewHeader extends StatelessWidget {
  const ProductsViewHeader({super.key, required this.productsLength});
  final int productsLength;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Text(
            "نتائج 5",
            textAlign: TextAlign.right,
            style: TextStyles.bold13.copyWith(
              color: const Color(0xFF0C0D0D),
            ),
          ),
          const Spacer(),
          Container(
            width: 50,
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.10000000149011612),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0x66CACECE)),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: SvgPicture.asset(
              Assets.imagesFilter2,
              width: 20,
              height: 20,
            ),
          )
        ],
      ),
    );
  }
}
