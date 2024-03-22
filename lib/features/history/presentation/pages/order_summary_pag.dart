import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/my_order/order_summary_page.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:resto_user/features/history/presentation/widgets/download_invoice_widget.dart';

class OrderSummaryPage extends StatelessWidget {
  const OrderSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final constants = GetIt.I.get<OrderSummaryPageConstants>();
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(appTheme.spaces.space_700),
          child: AppBarWidget(title: constants.txtOrderSummary)),
      backgroundColor: appTheme.colors.secondary,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(left: appTheme.spaces.space_300),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  constants.txtResto,
                  style: appTheme.typography.h700,
                ),
                Text(
                  constants.txtAddress,
                  style: appTheme.typography.h300,
                ),
                const DownloadInvoiceWidget(),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
