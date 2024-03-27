import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/checkout/domain/usecase/send_instruction_usecase.dart';
import 'package:resto_user/features/checkout/presentation/bloc/instruction_bloc/instruction_bloc_event.dart';
import 'package:resto_user/features/checkout/presentation/bloc/instruction_bloc/instruction_bloc_state.dart';

class InstructionBloc extends Bloc<InstructionEvent, InstructionBlocState> {
  InstructionBloc() : super(InstructionBlocState(error: null, messages: null)) {
    on<SendInstructionEvent>(sendInstructions);
  }

  Future<void> sendInstructions(
      SendInstructionEvent event, Emitter<InstructionBlocState> emit) async {
    await SendInstructionUseCase(GetIt.I.get())(event.message);
  }
}
