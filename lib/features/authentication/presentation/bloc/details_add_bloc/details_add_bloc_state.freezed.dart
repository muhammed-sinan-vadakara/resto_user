// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_add_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailsAddBlocState {
  String? get error => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsAddBlocStateCopyWith<DetailsAddBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsAddBlocStateCopyWith<$Res> {
  factory $DetailsAddBlocStateCopyWith(
          DetailsAddBlocState value, $Res Function(DetailsAddBlocState) then) =
      _$DetailsAddBlocStateCopyWithImpl<$Res, DetailsAddBlocState>;
  @useResult
  $Res call({String? error, String? imagePath, String? name});
}

/// @nodoc
class _$DetailsAddBlocStateCopyWithImpl<$Res, $Val extends DetailsAddBlocState>
    implements $DetailsAddBlocStateCopyWith<$Res> {
  _$DetailsAddBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? imagePath = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsAddBlocStateImplCopyWith<$Res>
    implements $DetailsAddBlocStateCopyWith<$Res> {
  factory _$$DetailsAddBlocStateImplCopyWith(_$DetailsAddBlocStateImpl value,
          $Res Function(_$DetailsAddBlocStateImpl) then) =
      __$$DetailsAddBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, String? imagePath, String? name});
}

/// @nodoc
class __$$DetailsAddBlocStateImplCopyWithImpl<$Res>
    extends _$DetailsAddBlocStateCopyWithImpl<$Res, _$DetailsAddBlocStateImpl>
    implements _$$DetailsAddBlocStateImplCopyWith<$Res> {
  __$$DetailsAddBlocStateImplCopyWithImpl(_$DetailsAddBlocStateImpl _value,
      $Res Function(_$DetailsAddBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? imagePath = freezed,
    Object? name = freezed,
  }) {
    return _then(_$DetailsAddBlocStateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DetailsAddBlocStateImpl implements _DetailsAddBlocState {
  _$DetailsAddBlocStateImpl(
      {required this.error, required this.imagePath, required this.name});

  @override
  final String? error;
  @override
  final String? imagePath;
  @override
  final String? name;

  @override
  String toString() {
    return 'DetailsAddBlocState(error: $error, imagePath: $imagePath, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsAddBlocStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, imagePath, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsAddBlocStateImplCopyWith<_$DetailsAddBlocStateImpl> get copyWith =>
      __$$DetailsAddBlocStateImplCopyWithImpl<_$DetailsAddBlocStateImpl>(
          this, _$identity);
}

abstract class _DetailsAddBlocState implements DetailsAddBlocState {
  factory _DetailsAddBlocState(
      {required final String? error,
      required final String? imagePath,
      required final String? name}) = _$DetailsAddBlocStateImpl;

  @override
  String? get error;
  @override
  String? get imagePath;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$DetailsAddBlocStateImplCopyWith<_$DetailsAddBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
