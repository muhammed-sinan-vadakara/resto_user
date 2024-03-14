// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductBlocState {
  List<ProductEntity>? get products => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductBlocStateCopyWith<ProductBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductBlocStateCopyWith<$Res> {
  factory $ProductBlocStateCopyWith(
          ProductBlocState value, $Res Function(ProductBlocState) then) =
      _$ProductBlocStateCopyWithImpl<$Res, ProductBlocState>;
  @useResult
  $Res call({List<ProductEntity>? products, String? error});
}

/// @nodoc
class _$ProductBlocStateCopyWithImpl<$Res, $Val extends ProductBlocState>
    implements $ProductBlocStateCopyWith<$Res> {
  _$ProductBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductBlocStateImplCopyWith<$Res>
    implements $ProductBlocStateCopyWith<$Res> {
  factory _$$ProductBlocStateImplCopyWith(_$ProductBlocStateImpl value,
          $Res Function(_$ProductBlocStateImpl) then) =
      __$$ProductBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductEntity>? products, String? error});
}

/// @nodoc
class __$$ProductBlocStateImplCopyWithImpl<$Res>
    extends _$ProductBlocStateCopyWithImpl<$Res, _$ProductBlocStateImpl>
    implements _$$ProductBlocStateImplCopyWith<$Res> {
  __$$ProductBlocStateImplCopyWithImpl(_$ProductBlocStateImpl _value,
      $Res Function(_$ProductBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ProductBlocStateImpl(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProductBlocStateImpl implements _ProductBlocState {
  _$ProductBlocStateImpl(
      {required final List<ProductEntity>? products, required this.error})
      : _products = products;

  final List<ProductEntity>? _products;
  @override
  List<ProductEntity>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'ProductBlocState(products: $products, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductBlocStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_products), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductBlocStateImplCopyWith<_$ProductBlocStateImpl> get copyWith =>
      __$$ProductBlocStateImplCopyWithImpl<_$ProductBlocStateImpl>(
          this, _$identity);
}

abstract class _ProductBlocState implements ProductBlocState {
  factory _ProductBlocState(
      {required final List<ProductEntity>? products,
      required final String? error}) = _$ProductBlocStateImpl;

  @override
  List<ProductEntity>? get products;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$ProductBlocStateImplCopyWith<_$ProductBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
