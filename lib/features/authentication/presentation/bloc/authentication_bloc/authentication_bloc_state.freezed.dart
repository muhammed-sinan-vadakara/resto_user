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
  String? get error => throw _privateConstructorUsedError;
  int? get resendToken => throw _privateConstructorUsedError;
  String? get verificationId => throw _privateConstructorUsedError;

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
  $Res call({String? error, int? resendToken, String? verificationId});
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
    Object? error = freezed,
    Object? resendToken = freezed,
    Object? verificationId = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      resendToken: freezed == resendToken
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
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
  $Res call({String? error, int? resendToken, String? verificationId});
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
    Object? error = freezed,
    Object? resendToken = freezed,
    Object? verificationId = freezed,
  }) {
    return _then(_$AuthenticationBlocStateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      resendToken: freezed == resendToken
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthenticationBlocStateImpl implements _AuthenticationBlocState {
  _$AuthenticationBlocStateImpl(
      {required this.error,
      required this.resendToken,
      required this.verificationId});

  @override
  final String? error;
  @override
  final int? resendToken;
  @override
  final String? verificationId;

  @override
  String toString() {
    return 'AuthenticationBlocState(error: $error, resendToken: $resendToken, verificationId: $verificationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationBlocStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.resendToken, resendToken) ||
                other.resendToken == resendToken) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, resendToken, verificationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationBlocStateImplCopyWith<_$AuthenticationBlocStateImpl>
      get copyWith => __$$AuthenticationBlocStateImplCopyWithImpl<
          _$AuthenticationBlocStateImpl>(this, _$identity);
}

abstract class _AuthenticationBlocState implements AuthenticationBlocState {
  factory _AuthenticationBlocState(
      {required final String? error,
      required final int? resendToken,
      required final String? verificationId}) = _$AuthenticationBlocStateImpl;

  @override
  String? get error;
  @override
  int? get resendToken;
  @override
  String? get verificationId;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationBlocStateImplCopyWith<_$AuthenticationBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
