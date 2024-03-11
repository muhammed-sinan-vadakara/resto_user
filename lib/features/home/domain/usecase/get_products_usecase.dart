import 'package:resto_user/core/utils/firebase_storage_utils.dart';
import 'package:resto_user/features/home/domain/entity/product_entity/product_addon_entity.dart';
import 'package:resto_user/features/home/domain/entity/product_entity/product_entity.dart';
import 'package:resto_user/features/home/domain/entity/product_entity/product_type_entity.dart';
import 'package:resto_user/features/home/domain/repository/product_repository.dart';

final class GetAllProductsUseCase {
  final ProductRepo repository;
  GetAllProductsUseCase({required this.repository});

  Stream<List<ProductEntity>> call(String categoryId) async* {
    try {
      final productStream = repository.getAll(categoryId);

      await for (final products in productStream) {
        yield [
          for (final product in products)
            ProductEntity(
              availableFrom: product.availableFrom,
              availableUpTo: product.availableUpTo,
              name: product.name,
              imagePath:
                  await FirebaseStorageUtils.getDownloadUrl(product.imagePath),
              description: product.description,
              id: product.id,
              categoryId: categoryId,
              types: [
                for (final type in product.types)
                  ProductTypeEntity(
                    name: type.name,
                    price: type.price,
                    id: type.id,
                  )
              ],
              addOns: [
                for (final add in product.addOns)
                  ProductAddOnEntity(
                    name: add.name,
                    price: add.price,
                    id: add.id,
                  )
              ],
            )
        ];
      }
    } catch (e) {
      throw Exception('Data not found');
    }
  }
}
