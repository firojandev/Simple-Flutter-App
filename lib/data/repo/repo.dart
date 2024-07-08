import 'package:flutter_workflow/data/repo/category_repository.dart';
import 'package:flutter_workflow/data/repo/product_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

ProductRepository get productRepo => getIt.get<ProductRepository>();
CategoryRepository get categoryRepo => getIt.get<CategoryRepository>();