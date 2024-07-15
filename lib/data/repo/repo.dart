import 'package:flutter_workflow/data/repo/categories_repo_impl.dart';
import 'package:flutter_workflow/data/repo/category_repository.dart';
import 'package:flutter_workflow/data/repo/product_repo_impl.dart';
import 'package:flutter_workflow/data/repo/product_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initRepo(){
  getIt.registerLazySingleton<CategoryRepository>(() => CategoriesRepoImpl());
  getIt.registerLazySingleton<ProductRepository>(() => ProductRepoImpl());
}

CategoryRepository get categoryRepo => getIt.get<CategoryRepository>();
ProductRepository get productRepo => getIt.get<ProductRepository>();