import 'package:flutter/cupertino.dart';
import 'package:flutter_workflow/app/route/route_path.dart';
import 'package:flutter_workflow/features/home/widgets/category_card.dart';
import 'package:go_router/go_router.dart';

List<String> items = List<String>.generate(10, (i) => "Item $i");

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryName: items[index],
            onTap: () {
              print(items[index]);
              context.goNamed(
                RoutePath.productDetails,
                pathParameters: {"category": items[index]},
              );
            },
          );
        },
      ),
    );
  }
}
