import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/cart/domain/entity/cart_entity.dart';
import 'package:resto_user/features/cart/domain/usecase/add_cart_usecase.dart';
import 'package:resto_user/features/cart/domain/usecase/add_quantity_usecase.dart';
import 'package:resto_user/features/cart/domain/usecase/get_cart_item_usecase.dart';
import 'package:resto_user/features/cart/presentation/bloc/cart_state.dart';

abstract class CartEvent {}

class AddCartevent extends CartEvent {
  final String productId;
  final String type;
  final int quantity;
  AddCartevent(
      {required this.productId, required this.quantity, required this.type});
}

class GetCartevent extends CartEvent {}

class CartBloc extends Bloc<CartEvent, CartState> {
  bool streamLoaded = false;
  CartBloc()
      : super(
          CartState(cart: null, error: null),
        ) {
    on<GetCartevent>(
      (event, emit) async {
        fetchCartItem(emit);
      },
    );
    on<AddCartevent>(
      (event, emit) async {
        addCart(event, emit);
      },
    );
  }
  Future<void> addCart(AddCartevent event, Emitter<CartState> emit) async {
    return AddCartUsecase(repository: GetIt.I.get())(
      productId: event.productId,
      type: event.type,
      quantity: event.quantity,
    );
  }

  Stream<List<CartEntity>> fetchCartItem(Emitter<CartState> emit) async* {
    if (!streamLoaded) {
      streamLoaded = true;
      final cartStream = GetCartItemUsecase(repository: GetIt.I.get())('');
      await for (final cart in cartStream) {
        emit(state.copyWith(cart: cart));
      }
    }
  }

  Future<int> addQuantity(int currentQty) async {
    return AddQuantityUsecase(repository: GetIt.I.get())(currentQty);
  }
}
