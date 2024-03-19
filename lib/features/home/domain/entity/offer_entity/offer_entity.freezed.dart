// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OfferEntity {
  String get id => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  OfferType get offerType => throw _privateConstructorUsedError;
  List<String> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfferEntityCopyWith<OfferEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferEntityCopyWith<$Res> {
  factory $OfferEntityCopyWith(
          OfferEntity value, $Res Function(OfferEntity) then) =
      _$OfferEntityCopyWithImpl<$Res, OfferEntity>;
  @useResult
  $Res call(
      {String id,
      String imagePath,
      String name,
      String description,
      double amount,
      OfferType offerType,
      List<String> products});
}

/// @nodoc
class _$OfferEntityCopyWithImpl<$Res, $Val extends OfferEntity>
    implements $OfferEntityCopyWith<$Res> {
  _$OfferEntityCopyWithImpl(this._value, this._then);

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
    Object? description = null,
    Object? amount = null,
    Object? offerType = null,
    Object? products = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      offerType: null == offerType
          ? _value.offerType
          : offerType // ignore: cast_nullable_to_non_nullable
              as OfferType,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferEntityImplCopyWith<$Res>
    implements $OfferEntityCopyWith<$Res> {
  factory _$$OfferEntityImplCopyWith(
          _$OfferEntityImpl value, $Res Function(_$OfferEntityImpl) then) =
      __$$OfferEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String imagePath,
      String name,
      String description,
      double amount,
      OfferType offerType,
      List<String> products});
}

/// @nodoc
class __$$OfferEntityImplCopyWithImpl<$Res>
    extends _$OfferEntityCopyWithImpl<$Res, _$OfferEntityImpl>
    implements _$$OfferEntityImplCopyWith<$Res> {
  __$$OfferEntityImplCopyWithImpl(
      _$OfferEntityImpl _value, $Res Function(_$OfferEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imagePath = null,
    Object? name = null,
    Object? description = null,
    Object? amount = null,
    Object? offerType = null,
    Object? products = null,
  }) {
    return _then(_$OfferEntityImpl(
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      offerType: null == offerType
          ? _value.offerType
          : offerType // ignore: cast_nullable_to_non_nullable
              as OfferType,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$OfferEntityImpl implements _OfferEntity {
  const _$OfferEntityImpl(
      {required this.id,
      required this.imagePath,
      required this.name,
      required this.description,
      required this.amount,
      required this.offerType,
      required final List<String> products})
      : _products = products;

  @override
  final String id;
  @override
  final String imagePath;
  @override
  final String name;
  @override
  final String description;
  @override
  final double amount;
  @override
  final OfferType offerType;
  final List<String> _products;
  @override
  List<String> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'OfferEntity(id: $id, imagePath: $imagePath, name: $name, description: $description, amount: $amount, offerType: $offerType, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.offerType, offerType) ||
                other.offerType == offerType) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, imagePath, name, description,
      amount, offerType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferEntityImplCopyWith<_$OfferEntityImpl> get copyWith =>
      __$$OfferEntityImplCopyWithImpl<_$OfferEntityImpl>(this, _$identity);
}

abstract class _OfferEntity implements OfferEntity {
  const factory _OfferEntity(
      {required final String id,
      required final String imagePath,
      required final String name,
      required final String description,
      required final double amount,
      required final OfferType offerType,
      required final List<String> products}) = _$OfferEntityImpl;

  @override
  String get id;
  @override
  String get imagePath;
  @override
  String get name;
  @override
  String get description;
  @override
  double get amount;
  @override
  OfferType get offerType;
  @override
  List<String> get products;
  @override
  @JsonKey(ignore: true)
  _$$OfferEntityImplCopyWith<_$OfferEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
