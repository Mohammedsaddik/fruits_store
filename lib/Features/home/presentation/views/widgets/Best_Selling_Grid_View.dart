import 'package:flutter/material.dart';
import 'package:fruits_store/Core/Entites/Product_Entity/Product_Entity.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/Fruit_Item.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({
    super.key,
    required this.products,
  });
  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          crossAxisCount: 2,
          childAspectRatio: 163 / 215),
      itemBuilder: (cotext, index) {
        return FruitItem(
          productEntites: products[index],
        );
      },
    );
  }
}
