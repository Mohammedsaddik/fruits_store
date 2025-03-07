import 'package:flutter/material.dart';
import 'package:fruits_store/Features/home/presentation/views/product_view.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/home_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({
    super.key,
    required this.currentViewIndex,
  });

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: const [
        HomeView(),
        ProductView(),
      ],
    );
  }
}
