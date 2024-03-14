import 'dart:convert';
import 'dart:developer';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:uuid/uuid.dart';

const apiKey = 'rzp_test_XOq6PRUhYI4Ke7';
const keySecret = 'j91MI3QDLaqROvWsJyrsqxoh';

class PaymentWidget extends StatefulWidget {
  const PaymentWidget({super.key});

  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  late final Razorpay _razorpay;
  late String uuid;

  @override
  void initState() {
    super.initState();
    _initPaymentGateway();
  }

  void _initPaymentGateway() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    final key = utf8.encode(keySecret);
    final bytes = utf8.encode('${response.orderId}|${response.paymentId}');
    final hmacSha256 = Hmac(sha256, key);
    final generatedSignature = hmacSha256.convert(bytes);
    if (generatedSignature.toString() == response.signature) {
      log("Payment was successful!");
      //Handle what to do after a successful payment.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Success : payment successful"),
            // content: const Text("Are you sure you wish to delete this item?"),
            actions: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                    // PlaceOrderPrepaid();
                  },
                  child: const Text("OK"))
              // ),
            ],
          );
        },
      );
    } else {}
  }

  void _handlePaymentError(PaymentFailureResponse response) {}

  void _handleExternalWallet(ExternalWalletResponse response) {}

  /// Create order id
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
      data: '''
{
    "amount": 100,
    "currency": "INR",
    "receipt": "$uuid"
}
''',
    );
    return response.data;
  }

  Future<void> doPayment() async {
    final orderData = await createOrder();

    var options = {
      'key': apiKey,
      'amount': 100, //in the smallest currency sub-unit.
      'name': 'Company NAMEEEEE',
      'order_id': '${orderData['id']}', // Generate order_id using Orders API
      'description': 'Fine T-Shirt',
      'timeout': 60 * 6, // in seconds
    };
    // 'prefill': {'contact': '909899797', 'email': 'fdgdfggf@ssfsds.fdsf'}
    _razorpay.open(options);
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(theme.spaces.space_700),
          child: const AppBarWidget(title: 'Payment Method')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          doPayment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
