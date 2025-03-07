import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_store/Core/Cubits/Punners_Cubits/punner_cubit.dart';
import 'package:fruits_store/Core/healper_function/get_dummy_punner.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/Custom_Error_Widget.dart';
import 'package:fruits_store/Features/home/presentation/views/widgets/Featured_List.dart';

class FeaturedListBlocBuilder extends StatelessWidget {
  const FeaturedListBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PunnerCubit, PunnerState>(
      builder: (context, state) {
        if (state is PunnerSuccess) {
          return FeaturedList(
            punners: state.punners,
          );
        }
        if (state is PunnerError) {
          return CustomErrorWidget(
            text: state.errorMessage,
          );
        } else {
          return FeaturedList(
            punners: getDummyPunners(),
          );
        }
      },
    );
  }
}
