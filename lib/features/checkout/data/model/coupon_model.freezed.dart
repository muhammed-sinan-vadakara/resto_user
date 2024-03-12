// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CouponModel _$CouponModelFromJson(Map<String, dynamic> json) {
  return _CouponModel.fromJson(json);
}

/// @nodoc
mixin _$CouponModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  CouponType get couponType => throw _privateConstructorUsedError;
  double get percentageOrAmount => throw _privateConstructorUsedError;
  List<String> get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponModelCopyWith<CouponModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponModelCopyWith<$Res> {
  factory $CouponModelCopyWith(
          CouponModel value, $Res Function(CouponModel) then) =
      _$CouponModelCopyWithImpl<$Res, CouponModel>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String code,
      CouponType couponType,
      double percentageOrAmount,
      List<String> condition});
}

/// @nodoc
class _$CouponModelCopyWithImpl<$Res, $Val extends CouponModel>
    implements $CouponModelCopyWith<$Res> {
  _$CouponModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? code = null,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponModelImplCopyWith<$Res>
    implements $CouponModelCopyWith<$Res> {
  factory _$$CouponModelImplCopyWith(
          _$CouponModelImpl value, $Res Function(_$CouponModelImpl) then) =
      __$$CouponModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String code,
      CouponType couponType,
      double percentageOrAmount,
      List<String> condition});
}

/// @nodoc
class __$$CouponModelImplCopyWithImpl<$Res>
    extends _$CouponModelCopyWithImpl<$Res, _$CouponModelImpl>
    implements _$$CouponModelImplCopyWith<$Res> {
  __$$CouponModelImplCopyWithImpl(
      _$CouponModelImpl _value, $Res Function(_$CouponModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? code = null,
    Object? couponType = null,
    Object? percentageOrAmount = null,
    Object? condition = null,
  }) {
    return _then(_$CouponModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponModelImpl extends _CouponModel {
  _$CouponModelImpl(
      {required this.id,
      required this.title,
      required this.code,
      required this.couponType,
      required this.percentageOrAmount,
      required final List<String> condition})
      : _condition = condition,
        super._();

  factory _$CouponModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String code;
  @override
  final CouponType couponType;
  @override
  final double percentageOrAmount;
  final List<String> _condition;
  @override
  List<String> get condition {
    if (_condition is EqualUnmodifiableListView) return _condition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_condition);
  }

  @override
  String toString() {
    return 'CouponModel(id: $id, title: $title, code: $code, couponType: $couponType, percentageOrAmount: $percentageOrAmount, condition: $condition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponModelImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, code, couponType,
      percentageOrAmount, const DeepCollectionEquality().hash(_condition));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponModelImplCopyWith<_$CouponModelImpl> get copyWith =>
      __$$CouponModelImplCopyWithImpl<_$CouponModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponModelImplToJson(
      this,
    );
  }
}

abstract class _CouponModel extends CouponModel {
  factory _CouponModel(
      {required final String? id,
      required final String? title,
      required final String code,
      required final CouponType couponType,
      required final double percentageOrAmount,
      required final List<String> condition}) = _$CouponModelImpl;
  _CouponModel._() : super._();

  factory _CouponModel.fromJson(Map<String, dynamic> json) =
      _$CouponModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String get code;
  @override
  CouponType get couponType;
  @override
  double get percentageOrAmount;
  @override
  List<String> get condition;
  @override
  @JsonKey(ignore: true)
  _$$CouponModelImplCopyWith<_$CouponModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
