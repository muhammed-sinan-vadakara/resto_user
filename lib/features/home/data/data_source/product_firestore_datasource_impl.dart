import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto_user/features/home/data/data_source/product_firestore_datasource.dart';
import 'package:resto_user/features/home/data/model/product_model/product_model.dart';

class ProductFirestoreDatasourceImpl implements ProductFirestoreDatasource {
  @override
  Stream<List<ProductModel>> getAll(String categoryId) async* {
    final collection = FirebaseFirestore.instance
        .collection('products')
        .withConverter(
            fromFirestore: ProductModel.fromFirestore,
            toFirestore: (model, _) => model.toFirestore());
    final productSteame = collection
        .where('categoryId', isEqualTo: categoryId)
        .snapshots(includeMetadataChanges: true);
    await for (final products in productSteame) {
      yield [
        for (final product in products.docs) product.data(),
      ];
    }
  }
}
