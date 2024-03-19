import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/home/domain/usecase/get_products_usecase.dart';
import 'package:resto_user/features/home/presentation/bloc/product_bloc/product_bloc_state.dart';

class GetProductEvent {
  final String categoryId;
  GetProductEvent(this.categoryId);
}

class ProductBloc extends Bloc<GetProductEvent, ProductBlocState> {
  StreamSubscription? lastSubscription;

  ProductBloc()
      : super(ProductBlocState(
          products: null,
          error: null,
        )) {
    on<GetProductEvent>(fetchProductData);
  }

  /// Fetch the product data
  Future<void> fetchProductData(
      GetProductEvent event, Emitter<ProductBlocState> emit) async {
    /// Close the last subscription
    lastSubscription?.cancel();

    final productStream =
        GetAllProductsUseCase(repository: GetIt.I.get())(event.categoryId);

    lastSubscription = productStream.listen((products) {
      emit(state.copyWith(products: products));
    });
    await lastSubscription!.asFuture();
  }
}
