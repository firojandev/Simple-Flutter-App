import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_workflow/features/common/widgets/custom_app_bar.dart';
import 'package:flutter_workflow/features/home/bloc/categories_bloc.dart';
import 'package:flutter_workflow/features/home/bloc/categories_event.dart';
import 'package:flutter_workflow/features/home/catgeories_view.dart';
import 'package:flutter_workflow/features/home/widgets/category_card.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoriesBloc>(
        create: (_) => CategoriesBloc()..add(CategoriesFetchEvent()),
        child: Scaffold(
          appBar: CustomAppBar(title: "Home"),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 60,
                    child: CategoryCard(
                      onTap: () {
                        context.goNamed(
                          "product_details",
                          pathParameters: {"category": "All"},
                        );
                      },
                      categoryName: "All",
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(child: CategoriesView())
                ],
              ),
            ),
          ),
        ));
  }
}
