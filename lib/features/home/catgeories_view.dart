import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_workflow/app/route/route_path.dart';
import 'package:flutter_workflow/features/home/bloc/categories_bloc.dart';
import 'package:flutter_workflow/features/home/bloc/categories_state.dart';
import 'package:flutter_workflow/features/home/widgets/category_card.dart';
import 'package:go_router/go_router.dart';

//List<String> items = List<String>.generate(10, (i) => "Item $i");

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
        builder: (context, state) {
      if (state is CategoriesInitialState) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      if (state is CategoriesLoadingState) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      if (state is CategoriesErrorState) {
        return Center(
          child: Text(state.message),
        );
      }

      if (state is CategoriesSuccessState){
        return Container(
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.categories.length,
            itemBuilder: (context, index) {
              final categoryName = state.categories[index];
              return CategoryCard(
                categoryName: categoryName,
                onTap: () {
                  print(categoryName);
                  context.goNamed(
                    RoutePath.productDetails,
                    pathParameters: {"category": categoryName},
                  );
                },
              );
            },
          ),
        );
      }


      return const SizedBox();
    });
  }
}
