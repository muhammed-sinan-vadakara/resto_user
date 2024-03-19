import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/core/enums/coupon_type.dart';
import 'package:resto_user/features/checkout/domain/entity/condition_entity.dart';

part 'coupon_entity.freezed.dart';

@freezed
class CouponEntity with _$CouponEntity {
  factory CouponEntity({
    required String? id,
    required String? title,
    required String? code,
    required CouponType couponType,
    required double percentageOrAmount,
    required List<ConditionEntity> condition,
  }) = _CouponEntity;
}
