import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/cart/domain/entity/cart_entity.dart';
import 'package:resto_user/features/cart/domain/usecase/add_quantity_usecase.dart';
import 'package:resto_user/features/cart/domain/usecase/get_cart_item_usecase.dart';
import 'package:resto_user/features/cart/presentation/bloc/cart_state.dart';

class GetCartevent {}

class CartBloc extends Bloc<GetCartevent, CartState> {
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
