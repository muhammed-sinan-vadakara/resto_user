// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_addon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductAddOnEntity {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductAddOnEntityCopyWith<ProductAddOnEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAddOnEntityCopyWith<$Res> {
  factory $ProductAddOnEntityCopyWith(
          ProductAddOnEntity value, $Res Function(ProductAddOnEntity) then) =
      _$ProductAddOnEntityCopyWithImpl<$Res, ProductAddOnEntity>;
  @useResult
  $Res call({String name, String id, String price});
}

/// @nodoc
class _$ProductAddOnEntityCopyWithImpl<$Res, $Val extends ProductAddOnEntity>
    implements $ProductAddOnEntityCopyWith<$Res> {
  _$ProductAddOnEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductAddOnEntityImplCopyWith<$Res>
    implements $ProductAddOnEntityCopyWith<$Res> {
  factory _$$ProductAddOnEntityImplCopyWith(_$ProductAddOnEntityImpl value,
          $Res Function(_$ProductAddOnEntityImpl) then) =
      __$$ProductAddOnEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id, String price});
}

/// @nodoc
class __$$ProductAddOnEntityImplCopyWithImpl<$Res>
    extends _$ProductAddOnEntityCopyWithImpl<$Res, _$ProductAddOnEntityImpl>
    implements _$$ProductAddOnEntityImplCopyWith<$Res> {
  __$$ProductAddOnEntityImplCopyWithImpl(_$ProductAddOnEntityImpl _value,
      $Res Function(_$ProductAddOnEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? price = null,
  }) {
    return _then(_$ProductAddOnEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductAddOnEntityImpl implements _ProductAddOnEntity {
  _$ProductAddOnEntityImpl(
      {required this.name, required this.id, required this.price});

  @override
  final String name;
  @override
  final String id;
  @override
  final String price;

  @override
  String toString() {
    return 'ProductAddOnEntity(name: $name, id: $id, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAddOnEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, id, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAddOnEntityImplCopyWith<_$ProductAddOnEntityImpl> get copyWith =>
      __$$ProductAddOnEntityImplCopyWithImpl<_$ProductAddOnEntityImpl>(
          this, _$identity);
}

abstract class _ProductAddOnEntity implements ProductAddOnEntity {
  factory _ProductAddOnEntity(
      {required final String name,
      required final String id,
      required final String price}) = _$ProductAddOnEntityImpl;

  @override
  String get name;
  @override
  String get id;
  @override
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$ProductAddOnEntityImplCopyWith<_$ProductAddOnEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
