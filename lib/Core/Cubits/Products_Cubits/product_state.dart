part of 'product_cubit.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductError extends ProductState {
  final String errorMessage;

  ProductError({required this.errorMessage});
}

class ProductScccess extends ProductState {
  final List<ProductEntity> products;

  ProductScccess(this.products);
}
