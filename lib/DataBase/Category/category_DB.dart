import 'package:hive/hive.dart';

import '../../models/category/category_model.dart';

const CATEGORY_DB_NAME = 'category-database';

abstract class CategoryDBFunctions{
  Future<List<CategoryModel>> getCategories();
  void insertCategory(CategoryModel value);
}

class CategoryDB implements CategoryDBFunctions{
  @override
  Future<void> insertCategory(CategoryModel value)async{
    
    final _categoryDB = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
    await _categoryDB.add(value);

  }

  @override
  Future<List<CategoryModel>>getCategories()async {
    final _categoryDB = await Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
    return _categoryDB.values.toList();
  }
}