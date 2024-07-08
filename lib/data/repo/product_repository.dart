import 'package:flutter_workflow/data/models/product_model.dart';

abstract class ProductRepository {
  Future<List<ProductModel>> getProducts({String? category});
}