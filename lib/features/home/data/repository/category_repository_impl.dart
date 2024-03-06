import 'package:resto_user/features/home/data/data_source/category_firestore_datasource.dart';
import 'package:resto_user/features/home/domain/entity/category_entity.dart';
import 'package:resto_user/features/home/domain/repository/category_repository.dart';

class CategoryRepoImpl implements CategoryRepo {
  final CategoryFirestoreDatasource firestoreDataSource;

  CategoryRepoImpl({required this.firestoreDataSource});
  @override
  Stream<List<CategoryEntity>> getAll() async* {
    final data = firestoreDataSource.getAll();
    await for (final snapshot in data) {
      final docs = snapshot;
      yield [
        for (final cat in docs)
          CategoryEntity(
            id: cat.id,
            imagePath: cat.imagePath,
            name: cat.name,
          )
      ];
    }
  }
}
