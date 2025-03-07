import 'package:flutter/material.dart';
import 'package:fruits_store/Core/Entites/Punner_Entity/punner_entity.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/Featured_Item.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key, required this.punners});
  final List<PunnerEntity> punners;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(punners.length, (index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: FeaturedItem(
              punnerEntity: punners[index],
            ),
          );
        }),
      ),
    );
  }
}
