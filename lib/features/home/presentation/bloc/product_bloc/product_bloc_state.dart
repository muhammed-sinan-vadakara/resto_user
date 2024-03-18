import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_user/features/home/domain/entity/product_entity/product_entity.dart';

part 'product_bloc_state.freezed.dart';

@freezed
class ProductBlocState with _$ProductBlocState {
  factory ProductBlocState({
    required List<ProductEntity>? products,
    required String? error,
  }) = _ProductBlocState;
}
