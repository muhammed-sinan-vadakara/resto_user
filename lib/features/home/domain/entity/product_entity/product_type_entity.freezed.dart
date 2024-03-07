// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductTypeEntity {
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductTypeEntityCopyWith<ProductTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTypeEntityCopyWith<$Res> {
  factory $ProductTypeEntityCopyWith(
          ProductTypeEntity value, $Res Function(ProductTypeEntity) then) =
      _$ProductTypeEntityCopyWithImpl<$Res, ProductTypeEntity>;
  @useResult
  $Res call({String name, String price, String id});
}

/// @nodoc
class _$ProductTypeEntityCopyWithImpl<$Res, $Val extends ProductTypeEntity>
    implements $ProductTypeEntityCopyWith<$Res> {
  _$ProductTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductTypeEntityImplCopyWith<$Res>
    implements $ProductTypeEntityCopyWith<$Res> {
  factory _$$ProductTypeEntityImplCopyWith(_$ProductTypeEntityImpl value,
          $Res Function(_$ProductTypeEntityImpl) then) =
      __$$ProductTypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String price, String id});
}

/// @nodoc
class __$$ProductTypeEntityImplCopyWithImpl<$Res>
    extends _$ProductTypeEntityCopyWithImpl<$Res, _$ProductTypeEntityImpl>
    implements _$$ProductTypeEntityImplCopyWith<$Res> {
  __$$ProductTypeEntityImplCopyWithImpl(_$ProductTypeEntityImpl _value,
      $Res Function(_$ProductTypeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? id = null,
  }) {
    return _then(_$ProductTypeEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductTypeEntityImpl implements _ProductTypeEntity {
  _$ProductTypeEntityImpl(
      {required this.name, required this.price, required this.id});

  @override
  final String name;
  @override
  final String price;
  @override
  final String id;

  @override
  String toString() {
    return 'ProductTypeEntity(name: $name, price: $price, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTypeEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, price, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductTypeEntityImplCopyWith<_$ProductTypeEntityImpl> get copyWith =>
      __$$ProductTypeEntityImplCopyWithImpl<_$ProductTypeEntityImpl>(
          this, _$identity);
}

abstract class _ProductTypeEntity implements ProductTypeEntity {
  factory _ProductTypeEntity(
      {required final String name,
      required final String price,
      required final String id}) = _$ProductTypeEntityImpl;

  @override
  String get name;
  @override
  String get price;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ProductTypeEntityImplCopyWith<_$ProductTypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
