import 'package:flutter_workflow/data/repo/category_repository.dart';
import 'package:flutter_workflow/data/service/service.dart';

import '../../utils/exceptions.dart';

class CategoriesRepoImpl implements CategoryRepository {
  @override
  Future<List<String>> getAllCategories() async {
    try {
      final response = await apiService.get(path: '/products/categories');

      if (response.statusCode == 200) {
        final List<String> categories = (response.data as List)
            .map((category) => category.toString())
            .toList();

        return categories;
      }

      return [];
    } catch (e) {
      throw RepoException("Error while fetching categories");
    }

  }

}