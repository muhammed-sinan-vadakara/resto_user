// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_add_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailsAddModel _$DetailsAddModelFromJson(Map<String, dynamic> json) {
  return _DetailsAddModel.fromJson(json);
}

/// @nodoc
mixin _$DetailsAddModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "imagepath")
  String? get imagePath => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsAddModelCopyWith<DetailsAddModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsAddModelCopyWith<$Res> {
  factory $DetailsAddModelCopyWith(
          DetailsAddModel value, $Res Function(DetailsAddModel) then) =
      _$DetailsAddModelCopyWithImpl<$Res, DetailsAddModel>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "imagepath") String? imagePath,
      String? name});
}

/// @nodoc
class _$DetailsAddModelCopyWithImpl<$Res, $Val extends DetailsAddModel>
    implements $DetailsAddModelCopyWith<$Res> {
  _$DetailsAddModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsAddModelImplCopyWith<$Res>
    implements $DetailsAddModelCopyWith<$Res> {
  factory _$$DetailsAddModelImplCopyWith(_$DetailsAddModelImpl value,
          $Res Function(_$DetailsAddModelImpl) then) =
      __$$DetailsAddModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "imagepath") String? imagePath,
      String? name});
}

/// @nodoc
class __$$DetailsAddModelImplCopyWithImpl<$Res>
    extends _$DetailsAddModelCopyWithImpl<$Res, _$DetailsAddModelImpl>
    implements _$$DetailsAddModelImplCopyWith<$Res> {
  __$$DetailsAddModelImplCopyWithImpl(
      _$DetailsAddModelImpl _value, $Res Function(_$DetailsAddModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imagePath = freezed,
    Object? name = freezed,
  }) {
    return _then(_$DetailsAddModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsAddModelImpl extends _DetailsAddModel {
  _$DetailsAddModelImpl(
      {required this.id,
      @JsonKey(name: "imagepath") required this.imagePath,
      required this.name})
      : super._();

  factory _$DetailsAddModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsAddModelImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: "imagepath")
  final String? imagePath;
  @override
  final String? name;

  @override
  String toString() {
    return 'DetailsAddModel(id: $id, imagePath: $imagePath, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsAddModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imagePath, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsAddModelImplCopyWith<_$DetailsAddModelImpl> get copyWith =>
      __$$DetailsAddModelImplCopyWithImpl<_$DetailsAddModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsAddModelImplToJson(
      this,
    );
  }
}

abstract class _DetailsAddModel extends DetailsAddModel {
  factory _DetailsAddModel(
      {required final String? id,
      @JsonKey(name: "imagepath") required final String? imagePath,
      required final String? name}) = _$DetailsAddModelImpl;
  _DetailsAddModel._() : super._();

  factory _DetailsAddModel.fromJson(Map<String, dynamic> json) =
      _$DetailsAddModelImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: "imagepath")
  String? get imagePath;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$DetailsAddModelImplCopyWith<_$DetailsAddModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
