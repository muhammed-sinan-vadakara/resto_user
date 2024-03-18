import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:resto_user/core/widgets/elevated_button_widget.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc_state.dart';
import 'package:resto_user/features/checkout/presentation/pages/coupons_page.dart';
import 'package:resto_user/features/checkout/presentation/widgets/address_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/bill_details_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/box_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/payment_widget.dart';

class CheckOutPage extends StatelessWidget {
  static const routePath = '/checkout';
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final assets = GetIt.I.get<AppAssetConstants>();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(theme.spaces.space_700),
        child: const AppBarWidget(title: 'Order Details'),
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
                content: 'Delivery in 15 - 20 min',
                style: theme.typography.h400,
              ),
              SizedBox(
                height: theme.spaces.space_300,
              ),
              BoxWidget(
                  leadingIcon: assets.icInstruction,
                  content: 'Add Instructions',
                  style: theme.typography.h400,
                  onPressed: () {},
                  trailingIcon: Icons.arrow_forward_ios_outlined),
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
                    trailingIcon: Icons.arrow_forward_ios_outlined,
                  );
                },
              ),
              SizedBox(
                height: theme.spaces.space_300,
              ),
              BoxWidget(
                leadingIcon: assets.icDelivery,
                content: 'Pay using COD',
                style: theme.typography.h400,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const PaymentWidget();
                    },
                  ));
                },
                trailingIcon: Icons.arrow_forward_ios_outlined,
              ),
              SizedBox(
                height: theme.spaces.space_300,
              ),
              const AddressWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ElevatedButtonWidget(
        text: 'Confirm order',
        onPressed: () {},
      ),
    );
  }
}
