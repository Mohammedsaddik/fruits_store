import 'package:flutter/material.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/search_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
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
                CustomHomeAppBar(),
                SizedBox(
                  height: 16.0,
                ),
                SearchTextField(),
                SizedBox(
                  height: 12.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
