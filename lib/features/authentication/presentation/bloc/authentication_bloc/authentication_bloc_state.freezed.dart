// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationBlocState {
  String get verificationId => throw _privateConstructorUsedError;
  int? get resendToken => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationBlocStateCopyWith<AuthenticationBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationBlocStateCopyWith<$Res> {
  factory $AuthenticationBlocStateCopyWith(AuthenticationBlocState value,
          $Res Function(AuthenticationBlocState) then) =
      _$AuthenticationBlocStateCopyWithImpl<$Res, AuthenticationBlocState>;
  @useResult
  $Res call({String verificationId, int? resendToken, String? error});
}

/// @nodoc
class _$AuthenticationBlocStateCopyWithImpl<$Res,
        $Val extends AuthenticationBlocState>
    implements $AuthenticationBlocStateCopyWith<$Res> {
  _$AuthenticationBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? resendToken = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      resendToken: freezed == resendToken
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationBlocStateImplCopyWith<$Res>
    implements $AuthenticationBlocStateCopyWith<$Res> {
  factory _$$AuthenticationBlocStateImplCopyWith(
          _$AuthenticationBlocStateImpl value,
          $Res Function(_$AuthenticationBlocStateImpl) then) =
      __$$AuthenticationBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String verificationId, int? resendToken, String? error});
}

/// @nodoc
class __$$AuthenticationBlocStateImplCopyWithImpl<$Res>
    extends _$AuthenticationBlocStateCopyWithImpl<$Res,
        _$AuthenticationBlocStateImpl>
    implements _$$AuthenticationBlocStateImplCopyWith<$Res> {
  __$$AuthenticationBlocStateImplCopyWithImpl(
      _$AuthenticationBlocStateImpl _value,
      $Res Function(_$AuthenticationBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? resendToken = freezed,
    Object? error = freezed,
  }) {
    return _then(_$AuthenticationBlocStateImpl(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      resendToken: freezed == resendToken
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthenticationBlocStateImpl implements _AuthenticationBlocState {
  _$AuthenticationBlocStateImpl(
      {required this.verificationId,
      required this.resendToken,
      required this.error});

  @override
  final String verificationId;
  @override
  final int? resendToken;
  @override
  final String? error;

  @override
  String toString() {
    return 'AuthenticationBlocState(verificationId: $verificationId, resendToken: $resendToken, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationBlocStateImpl &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.resendToken, resendToken) ||
                other.resendToken == resendToken) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, verificationId, resendToken, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationBlocStateImplCopyWith<_$AuthenticationBlocStateImpl>
      get copyWith => __$$AuthenticationBlocStateImplCopyWithImpl<
          _$AuthenticationBlocStateImpl>(this, _$identity);
}

abstract class _AuthenticationBlocState implements AuthenticationBlocState {
  factory _AuthenticationBlocState(
      {required final String verificationId,
      required final int? resendToken,
      required final String? error}) = _$AuthenticationBlocStateImpl;

  @override
  String get verificationId;
  @override
  int? get resendToken;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationBlocStateImplCopyWith<_$AuthenticationBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
