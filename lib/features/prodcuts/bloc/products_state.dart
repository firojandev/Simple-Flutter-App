import 'package:equatable/equatable.dart';

import '../../../data/models/product_model.dart';

class ProductsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ProductInitialState extends ProductsState {}

class ProductLoadingState extends ProductsState {}

class ProductLoadedState extends ProductsState {
  final List<ProductModel> products;

  ProductLoadedState(this.products);

  @override
  List<Object?> get props => [products];
}

class ProductErrorState extends ProductsState {
  final String message;

  ProductErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
