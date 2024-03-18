import 'dart:developer';

import 'package:resto_user/features/cart/domain/repository/cart_repository.dart';

class AddQuantityUsecase{
  final CartRepository repository;
  AddQuantityUsecase({required this.repository});
  Future<int>call(int currentQty)async{
    try{
    return repository.addQuantity(currentQty);
    }catch (e){
      log(e.toString());
    }return currentQty;
  }
}