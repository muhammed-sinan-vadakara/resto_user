// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_addons_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductAddonModel _$ProductAddonModelFromJson(Map<String, dynamic> json) {
  return _ProductAddonModel.fromJson(json);
}

/// @nodoc
mixin _$ProductAddonModel {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductAddonModelCopyWith<ProductAddonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAddonModelCopyWith<$Res> {
  factory $ProductAddonModelCopyWith(
          ProductAddonModel value, $Res Function(ProductAddonModel) then) =
      _$ProductAddonModelCopyWithImpl<$Res, ProductAddonModel>;
  @useResult
  $Res call({String name, String id, String price});
}

/// @nodoc
class _$ProductAddonModelCopyWithImpl<$Res, $Val extends ProductAddonModel>
    implements $ProductAddonModelCopyWith<$Res> {
  _$ProductAddonModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ProductAddonModelImplCopyWith<$Res>
    implements $ProductAddonModelCopyWith<$Res> {
  factory _$$ProductAddonModelImplCopyWith(_$ProductAddonModelImpl value,
          $Res Function(_$ProductAddonModelImpl) then) =
      __$$ProductAddonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id, String price});
}

/// @nodoc
class __$$ProductAddonModelImplCopyWithImpl<$Res>
    extends _$ProductAddonModelCopyWithImpl<$Res, _$ProductAddonModelImpl>
    implements _$$ProductAddonModelImplCopyWith<$Res> {
  __$$ProductAddonModelImplCopyWithImpl(_$ProductAddonModelImpl _value,
      $Res Function(_$ProductAddonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? price = null,
  }) {
    return _then(_$ProductAddonModelImpl(
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
@JsonSerializable()
class _$ProductAddonModelImpl extends _ProductAddonModel {
  _$ProductAddonModelImpl(
      {required this.name, required this.id, required this.price})
      : super._();

  factory _$ProductAddonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductAddonModelImplFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final String price;

  @override
  String toString() {
    return 'ProductAddonModel(name: $name, id: $id, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAddonModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAddonModelImplCopyWith<_$ProductAddonModelImpl> get copyWith =>
      __$$ProductAddonModelImplCopyWithImpl<_$ProductAddonModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductAddonModelImplToJson(
      this,
    );
  }
}

abstract class _ProductAddonModel extends ProductAddonModel {
  factory _ProductAddonModel(
      {required final String name,
      required final String id,
      required final String price}) = _$ProductAddonModelImpl;
  _ProductAddonModel._() : super._();

  factory _ProductAddonModel.fromJson(Map<String, dynamic> json) =
      _$ProductAddonModelImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$ProductAddonModelImplCopyWith<_$ProductAddonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
