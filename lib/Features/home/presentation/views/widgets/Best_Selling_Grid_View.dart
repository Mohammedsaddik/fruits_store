import 'package:flutter/material.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/Fruit_Item.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 8,
          crossAxisSpacing: 16,
          crossAxisCount: 2,
          childAspectRatio: 163 / 214),
      itemBuilder: (cotext, index) {
        return FruitItem();
      },
    );
  }
}
