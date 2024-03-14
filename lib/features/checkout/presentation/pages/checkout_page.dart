import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/checkout_page/checkout_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:resto_user/core/widgets/elevated_button_widget.dart';
import 'package:resto_user/features/checkout/presentation/pages/coupons_page.dart';
import 'package:resto_user/features/checkout/presentation/widgets/address_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/bill_details_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/box_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/switch_button_widget.dart';

class CheckOutPage extends StatelessWidget {
  static const routePath = '/checkout';
  const CheckOutPage({super.key});

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
                widget: null,
              ),
              SizedBox(
                height: theme.spaces.space_300,
              ),
              BoxWidget(
                leadingIcon: assets.icInstruction,
                content: constants.txtInstructions,
                widget: InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    )),
              ),
              SizedBox(
                height: theme.spaces.space_300,
              ),
              const BillDetailsWidget(),
              SizedBox(
                height: theme.spaces.space_300,
              ),
              BoxWidget(
                leadingIcon: assets.icCoupon,
                content: constants.txtCoupons,
                widget: InkWell(
                  onTap: () {
                    context.push(CouponsPage.routePath);
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                  ),
                ),
              ),
              SizedBox(
                height: theme.spaces.space_300,
              ),
              BoxWidget(
                leadingIcon: assets.icDelivery,
                content: constants.txtPaymentMethod,
                widget: const SwitchWidget(),
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
        text: constants.txtConfirmOrder,
        onPressed: () {},
      ),
    );
  }
}
