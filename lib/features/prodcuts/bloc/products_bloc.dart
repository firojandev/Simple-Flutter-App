import 'package:bloc/bloc.dart';
import 'package:flutter_workflow/data/repo/repo.dart';
import 'package:flutter_workflow/features/prodcuts/bloc/products_event.dart';
import 'package:flutter_workflow/features/prodcuts/bloc/products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductInitialState()) {
    on<ProductsFetchEvent>((event, emit) async {
      emit(ProductLoadingState());
      try {
        final category = event.category == "All" ? null : event.category;
        final products = await productRepo.getProducts(category: category);
        emit(ProductLoadedState(products));
      } catch (e) {
        emit(ProductErrorState(e.toString()));
      }
    });
  }
}
