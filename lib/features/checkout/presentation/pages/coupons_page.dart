import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc.dart';
import 'package:resto_user/features/checkout/presentation/bloc/coupon_bloc_state.dart';
import 'package:resto_user/features/checkout/presentation/widgets/coupon_page_shimmer.dart';
import 'package:resto_user/features/checkout/presentation/widgets/coupon_widget.dart';

class CouponsPage extends HookWidget {
  static const routePath = '/couponspage';
  const CouponsPage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(
        Duration.zero,
        () {
          context.read<CouponBloc>().add(GetCouponsEvent());
        },
      );
      return null;
    }, []);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(context.spaces.space_700),
          child: const AppBarWidget(title: 'Payment Coupons For you')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.spaces.space_300,
              vertical: context.spaces.space_300),
          child: Column(
            children: [
              SizedBox(child: BlocBuilder<CouponBloc, CouponBlocState>(
                builder: (context, state) {
                  if (state.coupons == null) {
                    return const Center(
                      child: CouponPageShimmer(),
                    );
                  } else {
                    return CouponWidget(
                      entity: state.coupons!,
                    );
                  }
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
