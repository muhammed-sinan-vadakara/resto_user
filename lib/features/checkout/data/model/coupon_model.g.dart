// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponModelImpl _$$CouponModelImplFromJson(Map<String, dynamic> json) =>
    _$CouponModelImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      code: json['code'] as String,
      couponType: $enumDecode(_$CouponTypeEnumMap, json['couponType']),
      percentageOrAmount: (json['percentageOrAmount'] as num).toDouble(),
      condition: (json['condition'] as List<dynamic>)
          .map((e) => Condition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CouponModelImplToJson(_$CouponModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'code': instance.code,
      'couponType': _$CouponTypeEnumMap[instance.couponType]!,
      'percentageOrAmount': instance.percentageOrAmount,
      'condition': instance.condition,
    };

const _$CouponTypeEnumMap = {
  CouponType.amount: 'amount',
  CouponType.percentage: 'percentage',
  CouponType.freeDelivery: 'freeDelivery',
};
