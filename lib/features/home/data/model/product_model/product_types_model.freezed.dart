// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_types_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductTypeModel _$ProductTypeModelFromJson(Map<String, dynamic> json) {
  return _ProductTypeModel.fromJson(json);
}

/// @nodoc
mixin _$ProductTypeModel {
  String get name => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductTypeModelCopyWith<ProductTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTypeModelCopyWith<$Res> {
  factory $ProductTypeModelCopyWith(
          ProductTypeModel value, $Res Function(ProductTypeModel) then) =
      _$ProductTypeModelCopyWithImpl<$Res, ProductTypeModel>;
  @useResult
  $Res call({String name, String price, String id});
}

/// @nodoc
class _$ProductTypeModelCopyWithImpl<$Res, $Val extends ProductTypeModel>
    implements $ProductTypeModelCopyWith<$Res> {
  _$ProductTypeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ProductTypeModelImplCopyWith<$Res>
    implements $ProductTypeModelCopyWith<$Res> {
  factory _$$ProductTypeModelImplCopyWith(_$ProductTypeModelImpl value,
          $Res Function(_$ProductTypeModelImpl) then) =
      __$$ProductTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String price, String id});
}

/// @nodoc
class __$$ProductTypeModelImplCopyWithImpl<$Res>
    extends _$ProductTypeModelCopyWithImpl<$Res, _$ProductTypeModelImpl>
    implements _$$ProductTypeModelImplCopyWith<$Res> {
  __$$ProductTypeModelImplCopyWithImpl(_$ProductTypeModelImpl _value,
      $Res Function(_$ProductTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? id = null,
  }) {
    return _then(_$ProductTypeModelImpl(
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
@JsonSerializable()
class _$ProductTypeModelImpl extends _ProductTypeModel {
  _$ProductTypeModelImpl(
      {required this.name, required this.price, required this.id})
      : super._();

  factory _$ProductTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductTypeModelImplFromJson(json);

  @override
  final String name;
  @override
  final String price;
  @override
  final String id;

  @override
  String toString() {
    return 'ProductTypeModel(name: $name, price: $price, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTypeModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, price, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductTypeModelImplCopyWith<_$ProductTypeModelImpl> get copyWith =>
      __$$ProductTypeModelImplCopyWithImpl<_$ProductTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductTypeModelImplToJson(
      this,
    );
  }
}

abstract class _ProductTypeModel extends ProductTypeModel {
  factory _ProductTypeModel(
      {required final String name,
      required final String price,
      required final String id}) = _$ProductTypeModelImpl;
  _ProductTypeModel._() : super._();

  factory _ProductTypeModel.fromJson(Map<String, dynamic> json) =
      _$ProductTypeModelImpl.fromJson;

  @override
  String get name;
  @override
  String get price;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ProductTypeModelImplCopyWith<_$ProductTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
