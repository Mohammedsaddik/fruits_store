import 'package:dartz/dartz.dart';
import 'package:fruits_store/Core/Entites/Punner_Entity/punner_entity.dart';
import 'package:fruits_store/Core/Repos/Pubber_Repo/punner_repo.dart';
import 'package:fruits_store/Core/Services/data_base_service.dart';
import 'package:fruits_store/Core/errors/failers.dart';
import 'package:fruits_store/Core/models/Punner_Model/punner_model.dart';
import 'package:fruits_store/Core/utils/backEnd_endPoit.dart';

class PunnerRepoImp implements PunnerRepo {
  final DataBaseService dataBaseService;

  PunnerRepoImp({required this.dataBaseService});
  @override
  Future<Either<Failure, List<PunnerEntity>>> getPunner() async {
    try {
      var data = await dataBaseService.getData(
          path: DataBaseEndPoint.getPunners) as List<Map<String, dynamic>>;

      List<PunnerEntity> punners =
          data.map((e) => PunnerModel.fromJson(e).toEntity()).toList();
      return right(punners);
    } catch (e) {
      return left(
        const ServerFailure(
          message: 'Failed to get Punners Please try again!!!!',
        ),
      );
    }
  }
}
