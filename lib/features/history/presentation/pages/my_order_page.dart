import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/my_order/my_order_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:resto_user/features/history/presentation/widgets/history_tapbar_widget.dart';
import 'package:resto_user/features/history/presentation/widgets/order_tapbar_widget.dart';

class MyOrderPage extends StatelessWidget {
  static const routePath = "/myOrder";
  const MyOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<MyOrderPageConstants>();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(context.spaces.space_700),
            child: AppBarWidget(
              title: constants.txtMyOrder,
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Material(
                surfaceTintColor: Colors.transparent,
                child: TabBar(
                    indicatorColor: context.colors.primary,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.symmetric(
                        horizontal: context.spaces.space_300),
                    labelColor: context.colors.primary,
                    unselectedLabelColor: context.colors.text,
                    labelStyle: context.typography.h700,
                    tabs: [
                      Tab(
                        text: constants.txtCurrent,
                      ),
                      Tab(
                        text: constants.txtHistory,
                      )
                    ]),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height / 1.174,
                child: const TabBarView(
                    children: [OrderTapbarWidget(), HistoryTapbarWidget()]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
