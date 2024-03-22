import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/features/history/data/model/order_item.dart';
part 'my_order_entity.freezed.dart';

@freezed
class MyOrderEntity with _$MyOrderEntity {
  factory MyOrderEntity({
    required String id,
    required String uid,
    required String location,
    required String time,
    required List<OrderItemModel> items,
  }) = _MyOrderEntity;
}
