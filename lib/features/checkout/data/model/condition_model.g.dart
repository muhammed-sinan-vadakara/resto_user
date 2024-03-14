// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionImpl _$$ConditionImplFromJson(Map<String, dynamic> json) =>
    _$ConditionImpl(
      count: $enumDecode(_$ConditionTypeEnumMap, json['count']),
      check: $enumDecode(_$ConditionCheckEnumMap, json['check']),
      logic: $enumDecode(_$ConditionLogicEnumMap, json['logic']),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$ConditionImplToJson(_$ConditionImpl instance) =>
    <String, dynamic>{
      'count': _$ConditionTypeEnumMap[instance.count]!,
      'check': _$ConditionCheckEnumMap[instance.check]!,
      'logic': _$ConditionLogicEnumMap[instance.logic]!,
      'value': instance.value,
    };

const _$ConditionTypeEnumMap = {
  ConditionType.count: 'count',
  ConditionType.amount: 'amount',
};

const _$ConditionCheckEnumMap = {
  ConditionCheck.equalTo: 'equalTo',
  ConditionCheck.greaterThan: 'greaterThan',
  ConditionCheck.lessThan: 'lessThan',
};

const _$ConditionLogicEnumMap = {
  ConditionLogic.and: 'and',
  ConditionLogic.or: 'or',
};
