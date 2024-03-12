// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEntity {
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  List<ProductTypeEntity> get types => throw _privateConstructorUsedError;
  List<ProductAddOnEntity> get addOns => throw _privateConstructorUsedError;
  String get availableFrom => throw _privateConstructorUsedError;
  String get availableUpTo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
          ProductEntity value, $Res Function(ProductEntity) then) =
      _$ProductEntityCopyWithImpl<$Res, ProductEntity>;
  @useResult
  $Res call(
      {String name,
      String imagePath,
      String description,
      String categoryId,
      String id,
      List<ProductTypeEntity> types,
      List<ProductAddOnEntity> addOns,
      String availableFrom,
      String availableUpTo});
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res, $Val extends ProductEntity>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imagePath = null,
    Object? description = null,
    Object? categoryId = null,
    Object? id = null,
    Object? types = null,
    Object? addOns = null,
    Object? availableFrom = null,
    Object? availableUpTo = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<ProductTypeEntity>,
      addOns: null == addOns
          ? _value.addOns
          : addOns // ignore: cast_nullable_to_non_nullable
              as List<ProductAddOnEntity>,
      availableFrom: null == availableFrom
          ? _value.availableFrom
          : availableFrom // ignore: cast_nullable_to_non_nullable
              as String,
      availableUpTo: null == availableUpTo
          ? _value.availableUpTo
          : availableUpTo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductEntityImplCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$$ProductEntityImplCopyWith(
          _$ProductEntityImpl value, $Res Function(_$ProductEntityImpl) then) =
      __$$ProductEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String imagePath,
      String description,
      String categoryId,
      String id,
      List<ProductTypeEntity> types,
      List<ProductAddOnEntity> addOns,
      String availableFrom,
      String availableUpTo});
}

/// @nodoc
class __$$ProductEntityImplCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res, _$ProductEntityImpl>
    implements _$$ProductEntityImplCopyWith<$Res> {
  __$$ProductEntityImplCopyWithImpl(
      _$ProductEntityImpl _value, $Res Function(_$ProductEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imagePath = null,
    Object? description = null,
    Object? categoryId = null,
    Object? id = null,
    Object? types = null,
    Object? addOns = null,
    Object? availableFrom = null,
    Object? availableUpTo = null,
  }) {
    return _then(_$ProductEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<ProductTypeEntity>,
      addOns: null == addOns
          ? _value._addOns
          : addOns // ignore: cast_nullable_to_non_nullable
              as List<ProductAddOnEntity>,
      availableFrom: null == availableFrom
          ? _value.availableFrom
          : availableFrom // ignore: cast_nullable_to_non_nullable
              as String,
      availableUpTo: null == availableUpTo
          ? _value.availableUpTo
          : availableUpTo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductEntityImpl implements _ProductEntity {
  _$ProductEntityImpl(
      {required this.name,
      required this.imagePath,
      required this.description,
      required this.categoryId,
      required this.id,
      required final List<ProductTypeEntity> types,
      required final List<ProductAddOnEntity> addOns,
      required this.availableFrom,
      required this.availableUpTo})
      : _types = types,
        _addOns = addOns;

  @override
  final String name;
  @override
  final String imagePath;
  @override
  final String description;
  @override
  final String categoryId;
  @override
  final String id;
  final List<ProductTypeEntity> _types;
  @override
  List<ProductTypeEntity> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<ProductAddOnEntity> _addOns;
  @override
  List<ProductAddOnEntity> get addOns {
    if (_addOns is EqualUnmodifiableListView) return _addOns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addOns);
  }

  @override
  final String availableFrom;
  @override
  final String availableUpTo;

  @override
  String toString() {
    return 'ProductEntity(name: $name, imagePath: $imagePath, description: $description, categoryId: $categoryId, id: $id, types: $types, addOns: $addOns, availableFrom: $availableFrom, availableUpTo: $availableUpTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._addOns, _addOns) &&
            (identical(other.availableFrom, availableFrom) ||
                other.availableFrom == availableFrom) &&
            (identical(other.availableUpTo, availableUpTo) ||
                other.availableUpTo == availableUpTo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      imagePath,
      description,
      categoryId,
      id,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_addOns),
      availableFrom,
      availableUpTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      __$$ProductEntityImplCopyWithImpl<_$ProductEntityImpl>(this, _$identity);
}

abstract class _ProductEntity implements ProductEntity {
  factory _ProductEntity(
      {required final String name,
      required final String imagePath,
      required final String description,
      required final String categoryId,
      required final String id,
      required final List<ProductTypeEntity> types,
      required final List<ProductAddOnEntity> addOns,
      required final String availableFrom,
      required final String availableUpTo}) = _$ProductEntityImpl;

  @override
  String get name;
  @override
  String get imagePath;
  @override
  String get description;
  @override
  String get categoryId;
  @override
  String get id;
  @override
  List<ProductTypeEntity> get types;
  @override
  List<ProductAddOnEntity> get addOns;
  @override
  String get availableFrom;
  @override
  String get availableUpTo;
  @override
  @JsonKey(ignore: true)
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
