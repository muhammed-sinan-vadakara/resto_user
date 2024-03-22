import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/features/history/data/model/order_item.dart';

part 'my_order_model.freezed.dart';
part 'my_order_model.g.dart';

@freezed
class MyOrderModel with _$MyOrderModel {
  const MyOrderModel._();

  factory MyOrderModel({
    required String id,
    required String uid,
    required String location,
    required String time,
    required List<OrderItemModel> items,
  }) = _MyOrderModel;

  factory MyOrderModel.fromJson(Map<String, dynamic> json) =>
      _$MyOrderModelFromJson(json);

  factory MyOrderModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data()!;
    data['id'] = snapshot.id;
    return MyOrderModel.fromJson(data);
  }

  Map<String, dynamic> toFirestore() {
    return toJson()..remove('id');
  }
}
