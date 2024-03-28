import 'package:resto_user/core/exceptions/base_exception/base_exception.dart';
import 'package:resto_user/features/cart/domain/entity/cart_entity.dart';
import 'package:resto_user/features/cart/domain/repository/cart_repository.dart';

final class AddCartUsecase {
  final CartRepository repository;
  AddCartUsecase({required this.repository});

  Future<void> call({
    required String productId,
    required String type,
    required int quantity,
  }) async {
    try {
      return await repository.addCart(
        CartEntity(productId: productId, type: type, quantity: quantity),
      );
    } catch (e) {
      throw BaseException(e.toString());
    }
  }
}
