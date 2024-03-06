import 'package:resto_user/features/home/data/data_source/product_firestore_datasource.dart';
import 'package:resto_user/features/home/domain/entity/product_entity/product_addon_entity.dart';
import 'package:resto_user/features/home/domain/entity/product_entity/product_entity.dart';
import 'package:resto_user/features/home/domain/entity/product_entity/product_type_entity.dart';
import 'package:resto_user/features/home/domain/repository/product_repository.dart';

class ProductRepoImpl implements ProductRepo {
  final ProductFirestoreDatasource dataSource;

  ProductRepoImpl({required this.dataSource});

  @override
  Stream<List<ProductEntity>> getAll(String categoryId) async* {
    final data = dataSource.getAll(categoryId);
    await for (final snapshot in data) {
      final docs = snapshot;
      yield [
        for (final product in docs)
          ProductEntity(
            availableFrom: product.availableFrom,
            availableUpTo: product.availableUpTo,
            name: product.name,
            imagePath: product.imagePath,
            description: product.description,
            id: product.id,
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
                  id: add.id,
                  price: add.price,
                )
            ],
            categoryId: categoryId,
          )
      ];
    }
  }
}
