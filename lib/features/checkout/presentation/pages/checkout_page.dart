import 'dart:convert';
import 'dart:developer';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/checkout_page/checkout_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:resto_user/core/widgets/elevated_button_widget.dart';
import 'package:resto_user/features/checkout/presentation/bloc/toggle_switch/toggle_switch_bloc.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc_state.dart';
import 'package:resto_user/features/checkout/presentation/pages/coupons_page.dart';
import 'package:resto_user/features/checkout/presentation/widgets/address_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/bill_details_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/box_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/switch_button_widget.dart';
import 'package:uuid/uuid.dart';

const apiKey = 'rzp_test_XOq6PRUhYI4Ke7';
const keySecret = 'j91MI3QDLaqROvWsJyrsqxoh';

class CheckOutPage extends StatefulWidget {
  static const routePath = '/checkout';
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
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
      data: {"amount": 100, "currency": "INR", "receipt": uuid},
    );
    return response.data;
  }

  Future<void> doPayment() async {
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

    _razorpay.open(options);
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final assets = GetIt.I.get<AppAssetConstants>();
    final constants = GetIt.I.get<CheckoutPageConstants>();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(theme.spaces.space_700),
        child: AppBarWidget(title: constants.txtAppBarTitle),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_300),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: theme.spaces.space_300,
              ),
              BoxWidget(
                leadingIcon: assets.icTimer,
                content:
                    '${constants.txtDelivery} 15-20 ${constants.txtMinutes}',
                style: theme.typography.h400,
              ),
              SizedBox(
                height: theme.spaces.space_300,
              ),
              BoxWidget(
                leadingIcon: assets.icInstruction,
                content: constants.txtInstructions,
                trailing: InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    )),
                style: theme.typography.h400,
                onPressed: () {},
              ),
              SizedBox(
                height: theme.spaces.space_300,
              ),
              const BillDetailsWidget(),
              SizedBox(
                height: theme.spaces.space_300,
              ),
              BlocBuilder<CouponBloc, CouponBlocState>(
                builder: (context, state) {
                  final isCouponApplied = state.selectedCoupon != null;
                  return BoxWidget(
                    leadingIcon: assets.icCoupon,
                    content: isCouponApplied
                        ? "Coupon ${state.selectedCoupon} Applied"
                        : 'Coupons',
                    style: TextStyle(
                        color: isCouponApplied
                            ? theme.colors.primary
                            : theme.colors.text,
                        fontWeight: theme.typography.h400.fontWeight),
                    onPressed: () {
                      context.push(CouponsPage.routePath);
                    },
                    trailing: InkWell(
                      onTap: () {
                        context.push(CouponsPage.routePath);
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: theme.spaces.space_300,
              ),
              BoxWidget(
                leadingIcon: assets.icDelivery,
                content: constants.txtPaymentMethod,
                trailing: const SwitchWidget(),
                style: theme.typography.h400,
                onPressed: () {},
              ),
              SizedBox(
                height: theme.spaces.space_300,
              ),
              const AddressWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BlocBuilder<ToggleSwitchBloc, bool>(
        builder: (context, state) {
          return ElevatedButtonWidget(
            text: constants.txtConfirmOrder,
            onPressed: () {
              if (state == false) {
                doPayment();
              } else {
                context.push(CouponsPage.routePath);
              }
            },
          );
        },
      ),
    );
  }
}
