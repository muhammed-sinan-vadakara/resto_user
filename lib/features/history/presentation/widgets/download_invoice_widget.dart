import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/my_order/order_summary_page.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class DownloadInvoiceWidget extends StatelessWidget {
  const DownloadInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<OrderSummaryPageConstants>();
    return Container(
      width: MediaQuery.sizeOf(context).width / 1.90,
      height: MediaQuery.sizeOf(context).height / 17,
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: context.colors.textSubtle),
          borderRadius: BorderRadius.circular(context.spaces.space_100)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: EdgeInsets.only(
              left: context.spaces.space_600, top: context.spaces.space_50),
          child: Text(constants.txtDownloadInvoice,
              style: context.typography.h700),
        ),
      ),
    );
  }
}
