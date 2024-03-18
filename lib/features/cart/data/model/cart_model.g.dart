// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      productId: json['product_id'] as String,
      type: json['type'] as String,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'type': instance.type,
      'quantity': instance.quantity,
    };
