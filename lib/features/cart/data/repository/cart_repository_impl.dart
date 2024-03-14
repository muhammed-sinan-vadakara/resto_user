import 'package:resto_user/features/cart/data/datasource/cart_datasource.dart';
import 'package:resto_user/features/cart/domain/entity/cart_entity.dart';
import 'package:resto_user/features/cart/domain/repository/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final CartDataSource dataSource;
  CartRepositoryImpl({required this.dataSource});
  @override
  Stream<List<CartEntity>> getCartItems(String uid) async* {
    final data = dataSource.getCartItems(uid);
    await for (final snapshot in data) {
      yield [
        for (final item in snapshot)
          CartEntity(
              productId: item.productId,
              type: item.type,
              quantity: item.quantity)
      ];
    }
  }
  
  @override
  Future<int> addQuantity(int currentQty) {
    return dataSource.addQuantity(currentQty);
  }
  
  @override
  Future<int> decrementQty(int currentQty) {
    return dataSource.decrementQty(currentQty);
  }
}
