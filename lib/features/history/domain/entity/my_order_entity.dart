import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/features/history/domain/entity/order_item_entity.dart';
part 'my_order_entity.freezed.dart';

@freezed
class MyOrderEntity with _$MyOrderEntity {
  factory MyOrderEntity({
    required String id,
    required String uid,
    required String location,
    required String time,
     required String date,
    required List<OrderItemEntity> items,
  }) = _MyOrderEntity;
}
