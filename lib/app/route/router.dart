import 'package:flutter_workflow/app/route/route_path.dart';
import 'package:flutter_workflow/features/home/home_screen.dart';
import 'package:flutter_workflow/features/prodcuts/product_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(initialLocation: RoutePath.home, routes: [
  GoRoute(
      path: RoutePath.home,
      name: RoutePath.home,
      builder: (context, state) => HomeScreen(),
      routes: [
        GoRoute(
          path: "${RoutePath.productDetails}/:category",
          name: RoutePath.productDetails,
          builder: (context, state) => ProductScreen(
            category: state.pathParameters["category"] ?? "All",
          ),
        ),
      ])
]);
