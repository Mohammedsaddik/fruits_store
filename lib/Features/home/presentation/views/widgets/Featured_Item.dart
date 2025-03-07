import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruits_store/Core/Entites/Punner_Entity/punner_entity.dart';
import 'package:fruits_store/Core/Widgets/Custom_Network_Image.dart';
import 'package:fruits_store/Core/utils/app_images.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/Features_Item_Bottom.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key, required this.punnerEntity});
  final PunnerEntity punnerEntity;

  @override
  Widget build(BuildContext context) {
    var itemwidth = MediaQuery.sizeOf(context).width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        width: itemwidth,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned(
                left: 0.0,
                bottom: 0.0,
                top: 0.0,
                right: itemwidth * 0.3,
                child: punnerEntity.imageUrl != null
                    ? CustomNetworkImage(ImgUrl: punnerEntity.imageUrl!)
                    : Container(
                        color: Colors.grey,
                        height: 100,
                        width: 100,
                      ),
              ),
              Container(
                width: itemwidth * 0.5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: svg.Svg(Assets.imagesFeaturedItemBackground),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25.0,
                      ),
                      Text(
                        punnerEntity.namePunnerOne,
                        style: TextStyles.regular13.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        punnerEntity.namePunnerTwo,
                        style: TextStyles.bold16.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 11.0,
                      ),
                      FeaturesItemBottom(
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 29.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
