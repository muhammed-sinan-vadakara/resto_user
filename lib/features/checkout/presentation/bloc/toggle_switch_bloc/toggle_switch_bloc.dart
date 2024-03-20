import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_user/features/checkout/presentation/bloc/toggle_switch_bloc/toggle_switch_event.dart';

class ToggleSwitchBloc extends Bloc<ToggleSwitchEvent, bool> {
  ToggleSwitchBloc() : super(false) {
    on<ClickToggleSwitchEvent>((event, emit) {
      emit(!state);
    });
  }

  Stream<bool> mapEventToState(ToggleSwitchEvent event) async* {
    if (event is ClickToggleSwitchEvent) {
      yield !state;
    }
  }
}
