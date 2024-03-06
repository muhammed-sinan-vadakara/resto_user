import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
// import 'package:resto_user/core/constants/history/my_order_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/history/presentation/widgets/history_orders_listview_widget.dart';

class HistoryTapbarWidget extends StatelessWidget {
  const HistoryTapbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    // final constants = GetIt.I.get<MyOrderPageConstants>();
    return Scaffold(
      backgroundColor: appTheme.colors.secondary,
      body: Column(
        children: [
          SizedBox(
            height: appTheme.spaces.space_200,
          ),
          HistoryOrdersListviewWidget(),
        ],
      ),
    );
  }
}
