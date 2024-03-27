import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/checkout_page/checkout_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:resto_user/core/widgets/elevated_button_widget.dart';
import 'package:resto_user/features/checkout/presentation/bloc/payment_bloc/payment_bloc.dart';
import 'package:resto_user/features/checkout/presentation/bloc/payment_bloc/payment_bloc_state.dart';
import 'package:resto_user/features/checkout/domain/entity/instruction_entity.dart';
import 'package:resto_user/features/checkout/presentation/bloc/instruction_bloc/instruction_bloc.dart';
import 'package:resto_user/features/checkout/presentation/bloc/instruction_bloc/instruction_bloc_event.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc_state.dart';
import 'package:resto_user/features/checkout/presentation/pages/coupons_page.dart';
import 'package:resto_user/features/checkout/presentation/pages/order_placed_page.dart';
import 'package:resto_user/features/checkout/presentation/widgets/address_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/bill_details_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/box_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/instruction_bottom_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/switch_button_widget.dart';

class CheckOutPage extends HookWidget {
  static const routePath = '/checkout';
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final assets = GetIt.I.get<AppAssetConstants>();
    final constants = GetIt.I.get<CheckoutPageConstants>();
    var onChanged = useState<bool>(false);
    final TextEditingController instructionController = TextEditingController();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(context.spaces.space_700),
        child: AppBarWidget(title: constants.txtAppBarTitle),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.spaces.space_300),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: context.spaces.space_300,
              ),
              BoxWidget(
                leadingIcon: assets.icTimer,
                content:
                    '${constants.txtDelivery} 15-20 ${constants.txtMinutes}',
                style: context.typography.h400,
              ),
              SizedBox(
                height: context.spaces.space_300,
              ),
              InstructionBottomWidget(
                leadingIcon: assets.icInstruction,
                content: constants.txtInstructions,
                style: context.typography.h400,
                onPressed: () {
                  if (instructionController.text.isNotEmpty) {
                    BlocProvider.of<InstructionBloc>(context).add(
                      SendInstructionEvent(
                        InstructionEntity(message: instructionController.text),
                      ),
                    );
                    instructionController.clear();
                  }
                },
                controller: instructionController,
              ),
              SizedBox(
                height: context.spaces.space_300,
              ),
              const BillDetailsWidget(),
              SizedBox(
                height: context.spaces.space_300,
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
                            ? context.colors.primary
                            : context.colors.text,
                        fontWeight: context.typography.h400.fontWeight),
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
                height: context.spaces.space_300,
              ),
              BoxWidget(
                leadingIcon: assets.icDelivery,
                content: constants.txtPaymentMethod,
                trailing: SwitchWidget(
                  value: onChanged.value,
                  onChanged: (newValue) {
                    onChanged.value = newValue;
                  },
                ),
                style: context.typography.h400,
              ),
              SizedBox(
                height: context.spaces.space_300,
              ),
              const AddressWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BlocBuilder<PaymentBloc, PaymentBlocState>(
        builder: (context, state) {
          return ElevatedButtonWidget(
            text: constants.txtConfirmOrder,
            onPressed: () {
              onChanged.value
                  ? context.push(OrderPlacedPage.routePath)
                  : context.read<PaymentBloc>().add(PaymentMakeEvent());
            },
          );
        },
      ),
    );
  }
}
