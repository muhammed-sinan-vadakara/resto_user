// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/checkout/domain/usecase/get_coupon_usecase.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc_state.dart';

class GetCouponsEvent {}

class CouponBloc extends Bloc<GetCouponsEvent, CouponBlocState> {
  bool streamLoaded = false;

  CouponBloc()
      : super(
          CouponBlocState(coupons: null, eroor: null, selectedCoupon: null),
        ) {
    on<GetCouponsEvent>((event, emit) async {
      await fetchCoupons(emit);
    });
  }
  void selectedCoupon(String couponCode) {
    emit(state.copyWith(selectedCoupon: couponCode));
  }

  Future<void> fetchCoupons(Emitter<CouponBlocState> emit) async {
    if (!streamLoaded) {
      streamLoaded = true;
      final couponStream = GetAllCouponsUseCase(repository: GetIt.I.get())();

      await for (final coupon in couponStream) {
        emit(state.copyWith(coupons: coupon));
      }
    }
  }
}
