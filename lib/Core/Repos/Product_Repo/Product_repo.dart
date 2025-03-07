import 'package:dartz/dartz.dart';
import 'package:fruits_store/Core/Entites/Product_Entity/Product_Entity.dart';
import 'package:fruits_store/Core/errors/failers.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<ProductEntity>>> getProduct();
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProduct();
}
