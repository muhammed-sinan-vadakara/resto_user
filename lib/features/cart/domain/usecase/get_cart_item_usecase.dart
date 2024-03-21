import 'dart:developer';

import 'package:resto_user/features/cart/domain/entity/cart_entity.dart';
import 'package:resto_user/features/cart/domain/repository/cart_repository.dart';

class GetCartItemUsecase{
  final CartRepository repository;
  GetCartItemUsecase({required this.repository});
  Stream<List<CartEntity>>call(String uid)async*{
    try{
      final cartStream = repository.getCartItems(uid);
      await for(final items in cartStream){
        yield[
          for(final item in items)
          CartEntity(productId: item.productId, type: item.type, quantity: item.quantity)
        ];
      }
    }catch (e){
      log(e.toString());
    }
  }
}