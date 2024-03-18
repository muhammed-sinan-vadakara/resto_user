import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/features/cart/domain/entity/cart_entity.dart';
part 'cart_state.freezed.dart';
@freezed
class CartState with _$CartState{
  factory CartState({
    required List<CartEntity>? cart,
    required String? error,
  }) = _CartState;
}