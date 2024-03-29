import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto_user/features/home/data/data_source/category_firestore_datasource.dart';
import 'package:resto_user/features/home/data/model/category_model/category_model.dart';

class CategoryFirestoreDatasourceImpl implements CategoryFirestoreDatasource {
  final collection = FirebaseFirestore.instance
      .collection('category')
      .withConverter(
          fromFirestore: CategoryModel.fromFirestore,
          toFirestore: (model, _) => model.toFirestore());

  @override
  Stream<List<CategoryModel>> getAll() async* {
    final categoryStream = collection.snapshots(includeMetadataChanges: true);
    await for (final categorys in categoryStream) {
      yield [
        for (final category in categorys.docs) category.data(),
      ];
    }
  }
}
