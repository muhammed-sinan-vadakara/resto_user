import 'package:resto_user/features/home/data/model/category_model.dart';

abstract class CategoryFirestoreDatasource {
  Stream<List<CategoryModel>> getAll();
}
