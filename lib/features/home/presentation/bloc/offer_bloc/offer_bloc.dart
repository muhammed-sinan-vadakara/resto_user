import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/home/domain/usecase/get_offer_usecase.dart';
import 'package:resto_user/features/home/presentation/bloc/offer_bloc/offer_bloc_state.dart';

class GetOfferesEvent {}

class OfferBloc extends Bloc<GetOfferesEvent, OfferBlocState> {
  bool streamLoaded = false;

  OfferBloc()
      : super(
          OfferBlocState(
            offers: null,
            error: null,
          ),
        ) {
    on<GetOfferesEvent>((event, emit) async {
      await fetchOfferData(emit);
    });
  }

  /// Fetch the category data
  Future<void> fetchOfferData(Emitter<OfferBlocState> emit) async {
    if (!streamLoaded) {
      streamLoaded = true;
      final offerStream = GetOfferUseCase(repository: GetIt.I.get())();

      await for (final offer in offerStream) {
        emit(state.copyWith(offers: offer));
      }
    }
  }
}
