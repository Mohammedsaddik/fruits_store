import 'package:dartz/dartz.dart';
import 'package:fruits_store/Core/Entites/Punner_Entity/punner_entity.dart';
import 'package:fruits_store/Core/errors/failers.dart';

abstract class PunnerRepo {
  Future<Either<Failure, List<PunnerEntity>>> getPunner();
}
