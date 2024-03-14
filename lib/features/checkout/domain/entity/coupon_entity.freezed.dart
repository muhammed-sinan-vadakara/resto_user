// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CouponEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  CouponType get couponType => throw _privateConstructorUsedError;
  double get percentageOrAmount => throw _privateConstructorUsedError;
  List<ConditionEntity> get condition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CouponEntityCopyWith<CouponEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponEntityCopyWith<$Res> {
  factory $CouponEntityCopyWith(
          CouponEntity value, $Res Function(CouponEntity) then) =
      _$CouponEntityCopyWithImpl<$Res, CouponEntity>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? code,
      CouponType couponType,
      double percentageOrAmount,
      List<ConditionEntity> condition});
}

/// @nodoc
class _$CouponEntityCopyWithImpl<$Res, $Val extends CouponEntity>
    implements $CouponEntityCopyWith<$Res> {
  _$CouponEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? code = freezed,
    Object? couponType = null,
    Object? percentageOrAmount = null,
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      couponType: null == couponType
          ? _value.couponType
          : couponType // ignore: cast_nullable_to_non_nullable
              as CouponType,
      percentageOrAmount: null == percentageOrAmount
          ? _value.percentageOrAmount
          : percentageOrAmount // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as List<ConditionEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponEntityImplCopyWith<$Res>
    implements $CouponEntityCopyWith<$Res> {
  factory _$$CouponEntityImplCopyWith(
          _$CouponEntityImpl value, $Res Function(_$CouponEntityImpl) then) =
      __$$CouponEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? code,
      CouponType couponType,
      double percentageOrAmount,
      List<ConditionEntity> condition});
}

/// @nodoc
class __$$CouponEntityImplCopyWithImpl<$Res>
    extends _$CouponEntityCopyWithImpl<$Res, _$CouponEntityImpl>
    implements _$$CouponEntityImplCopyWith<$Res> {
  __$$CouponEntityImplCopyWithImpl(
      _$CouponEntityImpl _value, $Res Function(_$CouponEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? code = freezed,
    Object? couponType = null,
    Object? percentageOrAmount = null,
    Object? condition = null,
  }) {
    return _then(_$CouponEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      couponType: null == couponType
          ? _value.couponType
          : couponType // ignore: cast_nullable_to_non_nullable
              as CouponType,
      percentageOrAmount: null == percentageOrAmount
          ? _value.percentageOrAmount
          : percentageOrAmount // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value._condition
          : condition // ignore: cast_nullable_to_non_nullable
              as List<ConditionEntity>,
    ));
  }
}

/// @nodoc

class _$CouponEntityImpl implements _CouponEntity {
  _$CouponEntityImpl(
      {required this.id,
      required this.title,
      required this.code,
      required this.couponType,
      required this.percentageOrAmount,
      required final List<ConditionEntity> condition})
      : _condition = condition;

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? code;
  @override
  final CouponType couponType;
  @override
  final double percentageOrAmount;
  final List<ConditionEntity> _condition;
  @override
  List<ConditionEntity> get condition {
    if (_condition is EqualUnmodifiableListView) return _condition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_condition);
  }

  @override
  String toString() {
    return 'CouponEntity(id: $id, title: $title, code: $code, couponType: $couponType, percentageOrAmount: $percentageOrAmount, condition: $condition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.couponType, couponType) ||
                other.couponType == couponType) &&
            (identical(other.percentageOrAmount, percentageOrAmount) ||
                other.percentageOrAmount == percentageOrAmount) &&
            const DeepCollectionEquality()
                .equals(other._condition, _condition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, code, couponType,
      percentageOrAmount, const DeepCollectionEquality().hash(_condition));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponEntityImplCopyWith<_$CouponEntityImpl> get copyWith =>
      __$$CouponEntityImplCopyWithImpl<_$CouponEntityImpl>(this, _$identity);
}

abstract class _CouponEntity implements CouponEntity {
  factory _CouponEntity(
      {required final String? id,
      required final String? title,
      required final String? code,
      required final CouponType couponType,
      required final double percentageOrAmount,
      required final List<ConditionEntity> condition}) = _$CouponEntityImpl;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get code;
  @override
  CouponType get couponType;
  @override
  double get percentageOrAmount;
  @override
  List<ConditionEntity> get condition;
  @override
  @JsonKey(ignore: true)
  _$$CouponEntityImplCopyWith<_$CouponEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
