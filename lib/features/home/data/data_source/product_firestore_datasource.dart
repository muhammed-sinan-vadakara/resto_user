import 'package:resto_user/features/home/data/model/product_model/product_model.dart';

abstract class ProductFirestoreDatasource {
  Stream<List<ProductModel>> getAll(String categoryId);
}
