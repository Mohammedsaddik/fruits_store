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
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          crossAxisCount: 2,
          childAspectRatio: 163 / 230),
      itemBuilder: (cotext, index) {
        return FruitItem();
      },
    );
  }
}
