import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

@freezed
class OrderItemModel with _$OrderItemModel {
  const OrderItemModel._();

  factory OrderItemModel({
    @JsonKey(name: 'product_id') required String productId,
    required String type,
    required int quantity,
  }) = _OrderItemModel;
  factory OrderItemModel.fromJson(Map<String, Object?> json) =>
      _$OrderItemModelFromJson(json);

  factory OrderItemModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data()!;
    return OrderItemModel.fromJson(data);
  }
  Map<String, dynamic> toFirestore() {
    return toJson();
  }
}
