import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/history/presentation/bloc/history_bloc/my_order_bloc.dart';
import 'package:resto_user/features/history/presentation/bloc/history_bloc/my_order_state.dart';
import 'package:resto_user/features/history/presentation/widgets/current_orders_listview_widget.dart';

class OrderTapbarWidget extends HookWidget {
  const OrderTapbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(Duration.zero,
      () {
        context.read<MyOrderBloc>().add(GetOrdersEvent());
      },
      );
      return null;
    },[]);
    final appTheme = AppTheme.of(context);
    return Scaffold(
      backgroundColor: appTheme.colors.secondary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: appTheme.spaces.space_200,
            ),
            SizedBox(
              child: BlocBuilder<MyOrderBloc, MyOrderState>(
                  builder: (context, state) {
                if (state.orders == null) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return CurrentOrdersListviewWidget(
                    entity: state.orders!,
                  );
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
