import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto_user/features/cart/data/datasource/cart_datasource.dart';
import 'package:resto_user/features/cart/data/model/cart_model.dart';

class CartDataSourceImpl implements CartDataSource {
  final instance = FirebaseFirestore.instance;
  final db = FirebaseFirestore.instance.collection('cart').withConverter(
      fromFirestore: CartModel.fromFirestore,
      toFirestore: (model, _) => model.toFirestore());
  @override
  Future<void> incrementCart(int qty) async {
  
  }
  
  @override
  Stream<List<CartModel>> getCartItems(String uid) async*{
   final cartStream = db.snapshots();
   await for(final cart in cartStream){
    yield [for(final item in cart.docs)item.data()];
   }
  }
   
  }

