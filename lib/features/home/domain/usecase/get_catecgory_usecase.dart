import 'package:resto_user/core/utils/firebase_storage_utils.dart';
import 'package:resto_user/features/home/domain/entity/category_entity.dart';
import 'package:resto_user/features/home/domain/repository/category_repository.dart';

final class GetAllCategoryUseCase {
  final CategoryRepo repository;
  GetAllCategoryUseCase({required this.repository});

  Stream<List<CategoryEntity>> call() async* {
    try {
      final categoriesStream = repository.getAll();

      await for (final categories in categoriesStream) {
        yield [
          for (final category in categories)
            CategoryEntity(
              id: category.id,
              imagePath:
                  await FirebaseStorageUtils.getDownloadUrl(category.imagePath),
              name: category.name,
            )
        ];
      }
    } catch (e) {
      throw Exception('NO DATA');
    }
  }
}
