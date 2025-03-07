import 'package:bloc/bloc.dart';
import 'package:fruits_store/Core/Entites/Product_Entity/Product_Entity.dart';
import 'package:fruits_store/Core/Repos/Product_Repo/Product_repo.dart';
import 'package:meta/meta.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.productRepo) : super(ProductInitial());
  final ProductRepo productRepo;
  Future<void> getProduct() async {
    emit(ProductLoading());
    final result = await productRepo.getProduct();
    result.fold(
      (l) => emit(
        ProductError(errorMessage: "Error please try again"),
      ),
      (r) => emit(
        ProductScccess(r),
      ),
    );
  }

  Future<void> getBestSellingProduct() async {
    emit(ProductLoading());
    final result = await productRepo.getBestSellingProduct();
    result.fold(
      (l) => emit(
        ProductError(errorMessage: "Error please try again"),
      ),
      (r) => emit(
        ProductScccess(
          r,
        ),
      ),
    );
  }
}
