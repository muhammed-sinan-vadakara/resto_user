// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryBlocState {
  List<CategoryEntity>? get categories => throw _privateConstructorUsedError;
  String get selectedCategory => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryBlocStateCopyWith<CategoryBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryBlocStateCopyWith<$Res> {
  factory $CategoryBlocStateCopyWith(
          CategoryBlocState value, $Res Function(CategoryBlocState) then) =
      _$CategoryBlocStateCopyWithImpl<$Res, CategoryBlocState>;
  @useResult
  $Res call(
      {List<CategoryEntity>? categories,
      String selectedCategory,
      String? error});
}

/// @nodoc
class _$CategoryBlocStateCopyWithImpl<$Res, $Val extends CategoryBlocState>
    implements $CategoryBlocStateCopyWith<$Res> {
  _$CategoryBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? selectedCategory = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>?,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryBlocStateImplCopyWith<$Res>
    implements $CategoryBlocStateCopyWith<$Res> {
  factory _$$CategoryBlocStateImplCopyWith(_$CategoryBlocStateImpl value,
          $Res Function(_$CategoryBlocStateImpl) then) =
      __$$CategoryBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryEntity>? categories,
      String selectedCategory,
      String? error});
}

/// @nodoc
class __$$CategoryBlocStateImplCopyWithImpl<$Res>
    extends _$CategoryBlocStateCopyWithImpl<$Res, _$CategoryBlocStateImpl>
    implements _$$CategoryBlocStateImplCopyWith<$Res> {
  __$$CategoryBlocStateImplCopyWithImpl(_$CategoryBlocStateImpl _value,
      $Res Function(_$CategoryBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? selectedCategory = null,
    Object? error = freezed,
  }) {
    return _then(_$CategoryBlocStateImpl(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>?,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CategoryBlocStateImpl implements _CategoryBlocState {
  _$CategoryBlocStateImpl(
      {required final List<CategoryEntity>? categories,
      required this.selectedCategory,
      required this.error})
      : _categories = categories;

  final List<CategoryEntity>? _categories;
  @override
  List<CategoryEntity>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String selectedCategory;
  @override
  final String? error;

  @override
  String toString() {
    return 'CategoryBlocState(categories: $categories, selectedCategory: $selectedCategory, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryBlocStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      selectedCategory,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryBlocStateImplCopyWith<_$CategoryBlocStateImpl> get copyWith =>
      __$$CategoryBlocStateImplCopyWithImpl<_$CategoryBlocStateImpl>(
          this, _$identity);
}

abstract class _CategoryBlocState implements CategoryBlocState {
  factory _CategoryBlocState(
      {required final List<CategoryEntity>? categories,
      required final String selectedCategory,
      required final String? error}) = _$CategoryBlocStateImpl;

  @override
  List<CategoryEntity>? get categories;
  @override
  String get selectedCategory;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$CategoryBlocStateImplCopyWith<_$CategoryBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
