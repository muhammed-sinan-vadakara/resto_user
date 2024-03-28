import 'package:resto_user/features/cart/data/model/cart_model.dart';

abstract class CartDataSource {
  Stream<List<CartModel>> getCartItems(String uid);
  Future<void> addCart(CartModel model);
  Future<int> addQuantity(int currentQty);
  Future<int> decrementQty(int currentQty);
}
