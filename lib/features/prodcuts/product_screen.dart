import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_workflow/features/common/widgets/custom_app_bar.dart';
import 'package:flutter_workflow/features/prodcuts/bloc/products_bloc.dart';
import 'package:flutter_workflow/features/prodcuts/bloc/products_event.dart';
import 'package:flutter_workflow/features/prodcuts/products_view.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ProductsBloc()..add(ProductsFetchEvent(category)),
      child: Scaffold(
        appBar: CustomAppBar(
          title: "Products",
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProductsView(),
        ),
      ),
    );
  }
}
