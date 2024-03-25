import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/features/history/domain/entity/my_order_entity.dart';
part 'my_order_state.freezed.dart';

@freezed
class MyOrderState with _$MyOrderState {
  factory MyOrderState({
    required List<MyOrderEntity>? orders,
    required String? error,
  }) = _MyOrderState;
}
