import 'package:flutter/material.dart';
import 'package:fruits_store/Core/Widgets/custom_app_bar.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/search_text_field.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 25.0,
                ),
                BuildAppBar(
                  showbackBottom: false,
                  showNotificationItem: true,
                  context,
                  title: "المنتجات",
                ),
                SizedBox(
                  height: 16.0,
                ),
                SearchTextField(),
                SizedBox(
                  height: 12.0,
                ),
                SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
