import 'package:resto_user/features/cart/data/model/cart_model.dart';

abstract class CartDataSource{
  Future<void>incrementCart(int qty);
  Stream<List<CartModel>>getCartItems(String uid);
}