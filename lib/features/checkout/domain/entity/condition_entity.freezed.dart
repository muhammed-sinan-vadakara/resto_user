// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'condition_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConditionEntity {
  ConditionType get count => throw _privateConstructorUsedError;
  ConditionCheck get check => throw _privateConstructorUsedError;
  ConditionLogic get logic => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConditionEntityCopyWith<ConditionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionEntityCopyWith<$Res> {
  factory $ConditionEntityCopyWith(
          ConditionEntity value, $Res Function(ConditionEntity) then) =
      _$ConditionEntityCopyWithImpl<$Res, ConditionEntity>;
  @useResult
  $Res call(
      {ConditionType count,
      ConditionCheck check,
      ConditionLogic logic,
      double value});
}

/// @nodoc
class _$ConditionEntityCopyWithImpl<$Res, $Val extends ConditionEntity>
    implements $ConditionEntityCopyWith<$Res> {
  _$ConditionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? check = null,
    Object? logic = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as ConditionType,
      check: null == check
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as ConditionCheck,
      logic: null == logic
          ? _value.logic
          : logic // ignore: cast_nullable_to_non_nullable
              as ConditionLogic,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionEntityImplCopyWith<$Res>
    implements $ConditionEntityCopyWith<$Res> {
  factory _$$ConditionEntityImplCopyWith(_$ConditionEntityImpl value,
          $Res Function(_$ConditionEntityImpl) then) =
      __$$ConditionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConditionType count,
      ConditionCheck check,
      ConditionLogic logic,
      double value});
}

/// @nodoc
class __$$ConditionEntityImplCopyWithImpl<$Res>
    extends _$ConditionEntityCopyWithImpl<$Res, _$ConditionEntityImpl>
    implements _$$ConditionEntityImplCopyWith<$Res> {
  __$$ConditionEntityImplCopyWithImpl(
      _$ConditionEntityImpl _value, $Res Function(_$ConditionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? check = null,
    Object? logic = null,
    Object? value = null,
  }) {
    return _then(_$ConditionEntityImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as ConditionType,
      check: null == check
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as ConditionCheck,
      logic: null == logic
          ? _value.logic
          : logic // ignore: cast_nullable_to_non_nullable
              as ConditionLogic,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ConditionEntityImpl implements _ConditionEntity {
  _$ConditionEntityImpl(
      {required this.count,
      required this.check,
      required this.logic,
      required this.value});

  @override
  final ConditionType count;
  @override
  final ConditionCheck check;
  @override
  final ConditionLogic logic;
  @override
  final double value;

  @override
  String toString() {
    return 'ConditionEntity(count: $count, check: $check, logic: $logic, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionEntityImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.check, check) || other.check == check) &&
            (identical(other.logic, logic) || other.logic == logic) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, check, logic, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionEntityImplCopyWith<_$ConditionEntityImpl> get copyWith =>
      __$$ConditionEntityImplCopyWithImpl<_$ConditionEntityImpl>(
          this, _$identity);
}

abstract class _ConditionEntity implements ConditionEntity {
  factory _ConditionEntity(
      {required final ConditionType count,
      required final ConditionCheck check,
      required final ConditionLogic logic,
      required final double value}) = _$ConditionEntityImpl;

  @override
  ConditionType get count;
  @override
  ConditionCheck get check;
  @override
  ConditionLogic get logic;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$ConditionEntityImplCopyWith<_$ConditionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
