import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/features/checkout/domain/entity/coupon_entity.dart';

part 'coupon_bloc_state.freezed.dart';

@freezed
class CouponBlocState with _$CouponBlocState {
  factory CouponBlocState({
    required List<CouponEntity>? coupons,
    required String? eroor,
    String? selectedCoupon,
  }) = _CouponBlocState;
}
