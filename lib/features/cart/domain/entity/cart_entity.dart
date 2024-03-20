import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_entity.freezed.dart';

@freezed
class CartEntity with _$CartEntity{
  factory CartEntity({required String productId,
  required String type,
    required int quantity,
  }) = _CartEntity ;
}