import 'package:bloc/bloc.dart';
import 'package:fruits_store/Core/Entites/Punner_Entity/punner_entity.dart';
import 'package:fruits_store/Core/Repos/Pubber_Repo/punner_repo.dart';
import 'package:meta/meta.dart';

part 'punner_state.dart';

class PunnerCubit extends Cubit<PunnerState> {
  PunnerCubit(this.punnerRepo) : super(PunnerInitial());
  final PunnerRepo punnerRepo;
  Future<void> getPunner() async {
    emit(PunnerLoading());
    final result = await punnerRepo.getPunner();
    result.fold(
      (l) => emit(
        PunnerError(errorMessage: "Error Please try again"),
      ),
      (r) => emit(
        PunnerSuccess(r),
      ),
    );
  }
}
