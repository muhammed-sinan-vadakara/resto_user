// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapEntity {
  String get title => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapEntityCopyWith<MapEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEntityCopyWith<$Res> {
  factory $MapEntityCopyWith(MapEntity value, $Res Function(MapEntity) then) =
      _$MapEntityCopyWithImpl<$Res, MapEntity>;
  @useResult
  $Res call({String title, String address, double lat, double long});
}

/// @nodoc
class _$MapEntityCopyWithImpl<$Res, $Val extends MapEntity>
    implements $MapEntityCopyWith<$Res> {
  _$MapEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? address = null,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapEntityImplCopyWith<$Res>
    implements $MapEntityCopyWith<$Res> {
  factory _$$MapEntityImplCopyWith(
          _$MapEntityImpl value, $Res Function(_$MapEntityImpl) then) =
      __$$MapEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String address, double lat, double long});
}

/// @nodoc
class __$$MapEntityImplCopyWithImpl<$Res>
    extends _$MapEntityCopyWithImpl<$Res, _$MapEntityImpl>
    implements _$$MapEntityImplCopyWith<$Res> {
  __$$MapEntityImplCopyWithImpl(
      _$MapEntityImpl _value, $Res Function(_$MapEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? address = null,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$MapEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MapEntityImpl implements _MapEntity {
  _$MapEntityImpl(
      {required this.title,
      required this.address,
      required this.lat,
      required this.long});

  @override
  final String title;
  @override
  final String address;
  @override
  final double lat;
  @override
  final double long;

  @override
  String toString() {
    return 'MapEntity(title: $title, address: $address, lat: $lat, long: $long)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, address, lat, long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapEntityImplCopyWith<_$MapEntityImpl> get copyWith =>
      __$$MapEntityImplCopyWithImpl<_$MapEntityImpl>(this, _$identity);
}

abstract class _MapEntity implements MapEntity {
  factory _MapEntity(
      {required final String title,
      required final String address,
      required final double lat,
      required final double long}) = _$MapEntityImpl;

  @override
  String get title;
  @override
  String get address;
  @override
  double get lat;
  @override
  double get long;
  @override
  @JsonKey(ignore: true)
  _$$MapEntityImplCopyWith<_$MapEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
