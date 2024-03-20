import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:resto_user/features/checkout/presentation/bloc/payment_bloc/payment_bloc_state.dart';
import 'package:uuid/uuid.dart';

const apiKey = 'rzp_test_XOq6PRUhYI4Ke7';
const keySecret = 'j91MI3QDLaqROvWsJyrsqxoh';

sealed class PaymentBlocEvent {}

class PaymentMakeEvent extends PaymentBlocEvent {}

class PaymentBloc extends Bloc<PaymentBlocEvent, PaymentBlocState> {
  final Razorpay razorpay = Razorpay();
  late String uuid;

  PaymentBloc()
      : super(const PaymentBlocState(
          loading: false,
          success: false,
          failure: false,
        )) {
    on<PaymentMakeEvent>((event, emit) async {
      await makePayment();
    });
  }

  Future<void> makePayment() async {
    final orderData = await createOrder();

    var options = {
      'key': apiKey,
      'amount': 10000, //in the smallest currency sub-unit.
      'name': 'Resto',
      'order_id': '${orderData['id']}', // Generate order_id using Orders API
      'description': 'Beef Biriyani',
      'timeout': 60 * 6, // in seconds
      'payment_options': [
        'card',
        'netbanking',
        'upi'
      ], // Specify the payment options
      'theme': {
        'color': '#FF4545',
      },
    };

    razorpay.open(options);
  }

  Future<dynamic> createOrder() async {
    final dio = Dio();
    uuid = const Uuid().v4();

    final response = await dio.post(
      'https://api.razorpay.com/v1/orders',
      options: Options(
        contentType: 'application/json',
        headers: {
          'Authorization':
              'Basic ${base64.encode(utf8.encode('$apiKey:$keySecret'))}',
        },
      ),
      data: {"amount": 100, "currency": "INR", "receipt": uuid},
    );
    return response.data;
  }

  @override
  Future<void> close() {
    razorpay.clear();
    return super.close();
  }
}
