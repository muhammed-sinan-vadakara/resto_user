import 'package:resto_user/features/home/domain/entity/category_entity.dart';

abstract class CategoryRepo {
  Stream<List<CategoryEntity>> getAll();
}
