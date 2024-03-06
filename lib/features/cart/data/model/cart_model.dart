import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  const CartModel._();
  factory CartModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'product_id') required String productId,
    required String type,
    required int quantity,
  }) = _CartModel;
  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);

  factory CartModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data()!;
    return CartModel.fromJson(data);
  }
  Map<String, dynamic> toFirestore() {
    return toJson();
  }
}