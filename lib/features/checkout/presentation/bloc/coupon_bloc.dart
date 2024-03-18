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
          ),
        ) {
    on<GetCouponsEvent>((event, emit) async {
      await fetchCoupons(emit);
    });

    on<SetSelectedCouponEvent>(selectedCoupon);
  }

  void selectedCoupon(
      SetSelectedCouponEvent event, Emitter<CouponBlocState> emit) {
    if (event.couponCode == state.selectedCoupon) {
      emit(state.copyWith(
        selectedCoupon: null,
      ));
    } else {
      emit(state.copyWith(
        selectedCoupon: event.couponCode,
      ));
    }
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
