// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) {
  return _OfferModel.fromJson(json);
}

/// @nodoc
mixin _$OfferModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "imagepath")
  String? get imagePath => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  OfferType get offerType => throw _privateConstructorUsedError;
  List<String> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferModelCopyWith<OfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferModelCopyWith<$Res> {
  factory $OfferModelCopyWith(
          OfferModel value, $Res Function(OfferModel) then) =
      _$OfferModelCopyWithImpl<$Res, OfferModel>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "imagepath") String? imagePath,
      String? name,
      String? description,
      double? amount,
      OfferType offerType,
      List<String> products});
}

/// @nodoc
class _$OfferModelCopyWithImpl<$Res, $Val extends OfferModel>
    implements $OfferModelCopyWith<$Res> {
  _$OfferModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imagePath = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? offerType = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$OfferModelImplCopyWith<$Res>
    implements $OfferModelCopyWith<$Res> {
  factory _$$OfferModelImplCopyWith(
          _$OfferModelImpl value, $Res Function(_$OfferModelImpl) then) =
      __$$OfferModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "imagepath") String? imagePath,
      String? name,
      String? description,
      double? amount,
      OfferType offerType,
      List<String> products});
}

/// @nodoc
class __$$OfferModelImplCopyWithImpl<$Res>
    extends _$OfferModelCopyWithImpl<$Res, _$OfferModelImpl>
    implements _$$OfferModelImplCopyWith<$Res> {
  __$$OfferModelImplCopyWithImpl(
      _$OfferModelImpl _value, $Res Function(_$OfferModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imagePath = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? offerType = null,
    Object? products = null,
  }) {
    return _then(_$OfferModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
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
@JsonSerializable()
class _$OfferModelImpl extends _OfferModel {
  _$OfferModelImpl(
      {required this.id,
      @JsonKey(name: "imagepath") required this.imagePath,
      required this.name,
      required this.description,
      required this.amount,
      required this.offerType,
      required final List<String> products})
      : _products = products,
        super._();

  factory _$OfferModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferModelImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: "imagepath")
  final String? imagePath;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? amount;
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
    return 'OfferModel(id: $id, imagePath: $imagePath, name: $name, description: $description, amount: $amount, offerType: $offerType, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferModelImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imagePath, name, description,
      amount, offerType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferModelImplCopyWith<_$OfferModelImpl> get copyWith =>
      __$$OfferModelImplCopyWithImpl<_$OfferModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferModelImplToJson(
      this,
    );
  }
}

abstract class _OfferModel extends OfferModel {
  factory _OfferModel(
      {required final String? id,
      @JsonKey(name: "imagepath") required final String? imagePath,
      required final String? name,
      required final String? description,
      required final double? amount,
      required final OfferType offerType,
      required final List<String> products}) = _$OfferModelImpl;
  _OfferModel._() : super._();

  factory _OfferModel.fromJson(Map<String, dynamic> json) =
      _$OfferModelImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: "imagepath")
  String? get imagePath;
  @override
  String? get name;
  @override
  String? get description;
  @override
  double? get amount;
  @override
  OfferType get offerType;
  @override
  List<String> get products;
  @override
  @JsonKey(ignore: true)
  _$$OfferModelImplCopyWith<_$OfferModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
