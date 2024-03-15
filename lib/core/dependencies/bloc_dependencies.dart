import 'package:get_it/get_it.dart';
import 'package:resto_user/features/chat/presentation/bloc/chat_bloc.dart';

void setupBlocDependencies() {
  final getIt = GetIt.I;

  getIt.registerSingleton<ChatBloc>(ChatBloc());
}
