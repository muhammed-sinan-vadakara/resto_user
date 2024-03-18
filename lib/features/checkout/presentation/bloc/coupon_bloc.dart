import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/checkout/domain/usecase/get_coupon_usecase.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc_state.dart';

sealed class CouponsBlocEvent {}

class GetCouponsEvent extends CouponsBlocEvent {}

class SetSelectedCouponEvent extends CouponsBlocEvent {
  final String couponCode;
  SetSelectedCouponEvent(this.couponCode);
}

class CouponBloc extends Bloc<CouponsBlocEvent, CouponBlocState> {
  bool streamLoaded = false;

  CouponBloc()
      : super(
          CouponBlocState(
              coupons: null,
              error: null,
              selectedCoupon: null,
              selectedCouponIndex: -1),
        ) {
    on<GetCouponsEvent>((event, emit) async {
      await fetchCoupons(emit);
    });

    on<SetSelectedCouponEvent>(selectedCoupon);
  }

  void selectedCoupon(
      SetSelectedCouponEvent event, Emitter<CouponBlocState> emit) {
    final newIndex = state.coupons
        ?.indexWhere((coupons) => coupons.code == event.couponCode);
    emit(state.copyWith(
        selectedCoupon: event.couponCode, selectedCouponIndex: newIndex));
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
