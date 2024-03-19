// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CouponBlocState {
  List<CouponEntity>? get coupons => throw _privateConstructorUsedError;
  String? get eroor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CouponBlocStateCopyWith<CouponBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponBlocStateCopyWith<$Res> {
  factory $CouponBlocStateCopyWith(
          CouponBlocState value, $Res Function(CouponBlocState) then) =
      _$CouponBlocStateCopyWithImpl<$Res, CouponBlocState>;
  @useResult
  $Res call({List<CouponEntity>? coupons, String? eroor});
}

/// @nodoc
class _$CouponBlocStateCopyWithImpl<$Res, $Val extends CouponBlocState>
    implements $CouponBlocStateCopyWith<$Res> {
  _$CouponBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coupons = freezed,
    Object? eroor = freezed,
  }) {
    return _then(_value.copyWith(
      coupons: freezed == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<CouponEntity>?,
      eroor: freezed == eroor
          ? _value.eroor
          : eroor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponBlocStateImplCopyWith<$Res>
    implements $CouponBlocStateCopyWith<$Res> {
  factory _$$CouponBlocStateImplCopyWith(_$CouponBlocStateImpl value,
          $Res Function(_$CouponBlocStateImpl) then) =
      __$$CouponBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CouponEntity>? coupons, String? eroor});
}

/// @nodoc
class __$$CouponBlocStateImplCopyWithImpl<$Res>
    extends _$CouponBlocStateCopyWithImpl<$Res, _$CouponBlocStateImpl>
    implements _$$CouponBlocStateImplCopyWith<$Res> {
  __$$CouponBlocStateImplCopyWithImpl(
      _$CouponBlocStateImpl _value, $Res Function(_$CouponBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coupons = freezed,
    Object? eroor = freezed,
  }) {
    return _then(_$CouponBlocStateImpl(
      coupons: freezed == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<CouponEntity>?,
      eroor: freezed == eroor
          ? _value.eroor
          : eroor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CouponBlocStateImpl implements _CouponBlocState {
  _$CouponBlocStateImpl(
      {required final List<CouponEntity>? coupons, required this.eroor})
      : _coupons = coupons;

  final List<CouponEntity>? _coupons;
  @override
  List<CouponEntity>? get coupons {
    final value = _coupons;
    if (value == null) return null;
    if (_coupons is EqualUnmodifiableListView) return _coupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? eroor;

  @override
  String toString() {
    return 'CouponBlocState(coupons: $coupons, eroor: $eroor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponBlocStateImpl &&
            const DeepCollectionEquality().equals(other._coupons, _coupons) &&
            (identical(other.eroor, eroor) || other.eroor == eroor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_coupons), eroor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponBlocStateImplCopyWith<_$CouponBlocStateImpl> get copyWith =>
      __$$CouponBlocStateImplCopyWithImpl<_$CouponBlocStateImpl>(
          this, _$identity);
}

abstract class _CouponBlocState implements CouponBlocState {
  factory _CouponBlocState(
      {required final List<CouponEntity>? coupons,
      required final String? eroor}) = _$CouponBlocStateImpl;

  @override
  List<CouponEntity>? get coupons;
  @override
  String? get eroor;
  @override
  @JsonKey(ignore: true)
  _$$CouponBlocStateImplCopyWith<_$CouponBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
