import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
// import 'package:go_router/go_router.dart';
import 'package:resto_user/core/dependencies/setup_dependencies.dart';
import 'package:resto_user/features/history/presentation/pages/my_order_page.dart';
import 'package:resto_user/features/history/presentation/pages/order_summary_pag.dart';

void main() {
  setupDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyOrderPage(),
      // routerConfig: GetIt.I.get<GoRouter>(),
      title: 'Flutter Demo',
      theme: GetIt.I.get<ThemeData>(),
    );
  }
}
