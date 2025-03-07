import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_store/Core/Cubits/Products_Cubits/product_cubit.dart';
import 'package:fruits_store/Core/Cubits/Punners_Cubits/punner_cubit.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/BestSellingGridViewBlocBuilder.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/Best_Selling_Header.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/FeaturedListBlocBuilder.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/search_text_field.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<ProductCubit>().getBestSellingProduct();
    context.read<PunnerCubit>().getPunner();
    super.initState();
  }

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
                FeaturedListBlocBuilder(),
                SizedBox(
                  height: 12.0,
                ),
                BestSellingHeader(),
                SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          ),
          BestSellingGridViewBlocBuilder(),
        ],
      ),
    );
  }
}
