import 'package:flutter/material.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/product_view_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});
  static const routeName = "ProductView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductViewBody(),
    );
  }
}
