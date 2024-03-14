import 'package:resto_user/features/cart/domain/entity/cart_entity.dart';

abstract class CartRepository{
  Stream<List<CartEntity>>getCartItems(String uid);
   Future<int> addQuantity(int currentQty);
  Future<int> decrementQty(int currentQty);
}