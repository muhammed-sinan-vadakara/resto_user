import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/features/history/domain/usecase/my_order_usecase.dart';
import 'package:resto_user/features/history/presentation/bloc/history_bloc/my_order_state.dart';

sealed class MyOrderEvent{}

class GetOrdersEvent extends MyOrderEvent{}

class MyOrderBloc extends Bloc<MyOrderEvent,MyOrderState>{
  bool streamLoaded = false;
  MyOrderBloc() :super(MyOrderState(orders: null, error: null)){
    on<GetOrdersEvent>((event, emit) async{
      await getAll(emit);
    });
  }
  Future<void> getAll(Emitter<MyOrderState>emit)async{
    if(!streamLoaded){
      streamLoaded = true;
      final orderStream = MyOrderUsecase(repository: GetIt.I.get())();
       await for(final order in orderStream){
        emit(state.copyWith(orders: order));
       }

    }
   
  }
}