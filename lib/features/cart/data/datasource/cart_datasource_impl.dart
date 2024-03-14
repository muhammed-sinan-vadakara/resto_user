import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto_user/features/cart/data/datasource/cart_datasource.dart';
import 'package:resto_user/features/cart/data/model/cart_model.dart';

class CartDataSourceImpl implements CartDataSource {
  final instance = FirebaseFirestore.instance;
  final db = FirebaseFirestore.instance.collection('cart').withConverter(
      fromFirestore: CartModel.fromFirestore,
      toFirestore: (model, _) => model.toFirestore());
  @override
 
  
  @override
  Stream<List<CartModel>> getCartItems(String uid) async*{
   final cartStream = db.snapshots();
   await for(final cart in cartStream){
    yield [for(final item in cart.docs)item.data()];
   }
  }
  
  @override
  Future<int> addQuantity(int currentQty)async {
    if(currentQty < 0){
      throw Exception('Quantity cannot be negative.');
    }
    return currentQty +1;
  }
  
  @override
  Future<int> decrementQty(int currentQty) async{
    if (currentQty <= 0) {
    throw Exception('Quantity cannot be negative.');
  }
  return currentQty - 1;
  }
   
  }

