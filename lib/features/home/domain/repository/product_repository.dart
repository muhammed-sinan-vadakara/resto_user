import 'package:resto_user/features/home/domain/entity/product_entity/product_entity.dart';

abstract class ProductRepo {
  Stream<List<ProductEntity>> getAll(String categoryId);
}
