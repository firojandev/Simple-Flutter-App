import 'package:equatable/equatable.dart';

class ProductsEvent extends Equatable{
  @override
  List<Object?> get props => [];

}

class ProductsFetchEvent extends ProductsEvent {
  final String category;

  ProductsFetchEvent(this.category);

  @override
  List<Object?> get props => [];

}
