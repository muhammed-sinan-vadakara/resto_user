import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/history/order_summary_page.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class DownloadInvoiceWidget extends StatelessWidget {
  const DownloadInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final constants = GetIt.I.get<OrderSummaryPageConstants>();
    return Container(
      width: MediaQuery.sizeOf(context).width / 1.90,
      height: MediaQuery.sizeOf(context).height / 17,
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: appTheme.colors.textSubtle),
          borderRadius: BorderRadius.circular(appTheme.spaces.space_100)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: EdgeInsets.only(
              left: appTheme.spaces.space_600, top: appTheme.spaces.space_50),
          child: Text(constants.txtDownloadInvoice,
              style: appTheme.typography.h700),
        ),
      ),
    );
  }
}
