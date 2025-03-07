import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_store/Core/Cubits/Products_Cubits/product_cubit.dart';
import 'package:fruits_store/Core/Cubits/Punners_Cubits/punner_cubit.dart';
import 'package:fruits_store/Core/Repos/Product_Repo/Product_repo.dart';
import 'package:fruits_store/Core/Repos/Pubber_Repo/punner_repo.dart';
import 'package:fruits_store/Core/Services/get_it.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/HomeViewBody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductCubit>(
          create: (context) => ProductCubit(
            getIt.get<ProductRepo>(),
          ),
        ),
        BlocProvider<PunnerCubit>(
          create: (context) => PunnerCubit(
            getIt.get<PunnerRepo>(),
          ),
        ),
      ],
      child: HomeViewBody(),
    );
  }
}
