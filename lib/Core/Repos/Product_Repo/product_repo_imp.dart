import 'package:dartz/dartz.dart';
import 'package:fruits_store/Core/Entites/Product_Entity/Product_Entity.dart';
import 'package:fruits_store/Core/Repos/Product_Repo/Product_repo.dart';
import 'package:fruits_store/Core/Services/data_base_service.dart';
import 'package:fruits_store/Core/errors/failers.dart';
import 'package:fruits_store/Core/models/Product_Model/product_model.dart';
import 'package:fruits_store/Core/utils/backEnd_endPoit.dart';

class ProductRepoImp implements ProductRepo {
  final DataBaseService databaseService;

  ProductRepoImp({required this.databaseService});
  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProduct() async {
    try {
      var data = await databaseService.getData(
          path: DataBaseEndPoint.getProduct,
          query: {
            'limit': 10,
            'orderBy': 'sellingCount',
            'descending': true
          }) as List<Map<String, dynamic>>;

      List<ProductEntity> products =
          data.map((e) => ProductModel.fromJson(e).toEntity()).toList();
      return right(products);
    } catch (e) {
      return left(const ServerFailure(message: 'Failed to get products'));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getProduct() async {
    try {
      var data = await databaseService.getData(
          path: DataBaseEndPoint.getProduct) as List<Map<String, dynamic>>;
      List<ProductEntity> products =
          data.map((e) => ProductModel.fromJson(e).toEntity()).toList();
      return right(products);
    } catch (e) {
      return left(
        const ServerFailure(
          message: 'Failed to get products Please try again!!!!',
        ),
      );
    }
  }
}
