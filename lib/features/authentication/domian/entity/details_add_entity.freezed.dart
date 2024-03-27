// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_add_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailsAddEntity {
  String get id => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsAddEntityCopyWith<DetailsAddEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsAddEntityCopyWith<$Res> {
  factory $DetailsAddEntityCopyWith(
          DetailsAddEntity value, $Res Function(DetailsAddEntity) then) =
      _$DetailsAddEntityCopyWithImpl<$Res, DetailsAddEntity>;
  @useResult
  $Res call({String id, String imagePath, String name});
}

/// @nodoc
class _$DetailsAddEntityCopyWithImpl<$Res, $Val extends DetailsAddEntity>
    implements $DetailsAddEntityCopyWith<$Res> {
  _$DetailsAddEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imagePath = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsAddEntityImplCopyWith<$Res>
    implements $DetailsAddEntityCopyWith<$Res> {
  factory _$$DetailsAddEntityImplCopyWith(_$DetailsAddEntityImpl value,
          $Res Function(_$DetailsAddEntityImpl) then) =
      __$$DetailsAddEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String imagePath, String name});
}

/// @nodoc
class __$$DetailsAddEntityImplCopyWithImpl<$Res>
    extends _$DetailsAddEntityCopyWithImpl<$Res, _$DetailsAddEntityImpl>
    implements _$$DetailsAddEntityImplCopyWith<$Res> {
  __$$DetailsAddEntityImplCopyWithImpl(_$DetailsAddEntityImpl _value,
      $Res Function(_$DetailsAddEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imagePath = null,
    Object? name = null,
  }) {
    return _then(_$DetailsAddEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailsAddEntityImpl implements _DetailsAddEntity {
  const _$DetailsAddEntityImpl(
      {required this.id, required this.imagePath, required this.name});

  @override
  final String id;
  @override
  final String imagePath;
  @override
  final String name;

  @override
  String toString() {
    return 'DetailsAddEntity(id: $id, imagePath: $imagePath, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsAddEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, imagePath, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsAddEntityImplCopyWith<_$DetailsAddEntityImpl> get copyWith =>
      __$$DetailsAddEntityImplCopyWithImpl<_$DetailsAddEntityImpl>(
          this, _$identity);
}

abstract class _DetailsAddEntity implements DetailsAddEntity {
  const factory _DetailsAddEntity(
      {required final String id,
      required final String imagePath,
      required final String name}) = _$DetailsAddEntityImpl;

  @override
  String get id;
  @override
  String get imagePath;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$DetailsAddEntityImplCopyWith<_$DetailsAddEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
