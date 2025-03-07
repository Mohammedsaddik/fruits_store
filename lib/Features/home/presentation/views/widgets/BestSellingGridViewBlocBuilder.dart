import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_store/Core/Cubits/Products_Cubits/product_cubit.dart';
import 'package:fruits_store/Core/healper_function/get_dummy_product.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/Custom_Error_Widget.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/Best_Selling_Grid_View.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellingGridViewBlocBuilder extends StatelessWidget {
  const BestSellingGridViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductScccess) {
          return BestSellingGridView(
            products: state.products,
          );
        } else if (state is ProductError) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(
              text: state.errorMessage,
            ),
          );
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: BestSellingGridView(
              products: getDummyProducts(),
            ),
          );
        }
      },
    );
  }
}
