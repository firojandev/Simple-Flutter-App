import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_workflow/features/prodcuts/bloc/products_bloc.dart';
import 'package:flutter_workflow/features/prodcuts/bloc/products_state.dart';
import 'package:flutter_workflow/features/prodcuts/product_card.dart';

//List<String> items = List<String>.generate(10, (i) => "Item $i");

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsBloc, ProductsState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is ProductLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ProductLoadedState) {
            return GridView.builder(
              itemCount: state.products.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 240,
                childAspectRatio: 0.6,
              ),
              itemBuilder: (context, index) {
                final product = state.products[index];
                return ProductCard(productModel: product, addToCart: () {
                 // context.read<ProductsBloc>().add();
                });
              },
            );
          } else if (state is ProductErrorState) {
            return const Center(
              child: Text('Error loading products'),
            );
          } else {
            return const SizedBox();
          }
        });
  }
}
