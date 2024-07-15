import 'package:flutter_workflow/data/models/product_model.dart';
import 'package:flutter_workflow/data/repo/product_repository.dart';
import 'package:flutter_workflow/data/service/service.dart';

import '../../utils/exceptions.dart';

class ProductRepoImpl extends ProductRepository {
  @override
  Future<List<ProductModel>> getProducts({String? category}) async {
    try {
      final String url;
      if (category != null) {
        url = 'products/category/${category}';
      } else {
        url = "products";
      }

      final response = await apiService.get(path: url);

      if (response.statusCode == 200) {
        final List<ProductModel> products = (response.data as List)
            .map((product) => ProductModel.fromJson(product))
            .toList();

        return products;
      }

      return [];
    } catch (e) {
      throw RepoException("Error while fetching products");
    }
  }
}
