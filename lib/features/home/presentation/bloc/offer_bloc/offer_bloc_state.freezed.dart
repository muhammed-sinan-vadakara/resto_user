// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OfferBlocState {
  List<OfferEntity>? get offers => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfferBlocStateCopyWith<OfferBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferBlocStateCopyWith<$Res> {
  factory $OfferBlocStateCopyWith(
          OfferBlocState value, $Res Function(OfferBlocState) then) =
      _$OfferBlocStateCopyWithImpl<$Res, OfferBlocState>;
  @useResult
  $Res call({List<OfferEntity>? offers, String? error});
}

/// @nodoc
class _$OfferBlocStateCopyWithImpl<$Res, $Val extends OfferBlocState>
    implements $OfferBlocStateCopyWith<$Res> {
  _$OfferBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OfferEntity>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferBlocStateImplCopyWith<$Res>
    implements $OfferBlocStateCopyWith<$Res> {
  factory _$$OfferBlocStateImplCopyWith(_$OfferBlocStateImpl value,
          $Res Function(_$OfferBlocStateImpl) then) =
      __$$OfferBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OfferEntity>? offers, String? error});
}

/// @nodoc
class __$$OfferBlocStateImplCopyWithImpl<$Res>
    extends _$OfferBlocStateCopyWithImpl<$Res, _$OfferBlocStateImpl>
    implements _$$OfferBlocStateImplCopyWith<$Res> {
  __$$OfferBlocStateImplCopyWithImpl(
      _$OfferBlocStateImpl _value, $Res Function(_$OfferBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = freezed,
    Object? error = freezed,
  }) {
    return _then(_$OfferBlocStateImpl(
      offers: freezed == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OfferEntity>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OfferBlocStateImpl implements _OfferBlocState {
  _$OfferBlocStateImpl(
      {required final List<OfferEntity>? offers, required this.error})
      : _offers = offers;

  final List<OfferEntity>? _offers;
  @override
  List<OfferEntity>? get offers {
    final value = _offers;
    if (value == null) return null;
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'OfferBlocState(offers: $offers, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferBlocStateImpl &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_offers), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferBlocStateImplCopyWith<_$OfferBlocStateImpl> get copyWith =>
      __$$OfferBlocStateImplCopyWithImpl<_$OfferBlocStateImpl>(
          this, _$identity);
}

abstract class _OfferBlocState implements OfferBlocState {
  factory _OfferBlocState(
      {required final List<OfferEntity>? offers,
      required final String? error}) = _$OfferBlocStateImpl;

  @override
  List<OfferEntity>? get offers;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$OfferBlocStateImplCopyWith<_$OfferBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
