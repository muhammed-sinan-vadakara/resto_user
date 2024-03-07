import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/app_bar_widget.dart';
import 'package:resto_user/features/checkout/presentation/widgets/box_widget.dart';

class CheckOutPage extends StatelessWidget {
  static const routePath = '/checkout';
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(theme.spaces.space_700),
        child: const AppBarWidget(title: 'Order Details'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_300),
        child: Column(
          children: [
            SizedBox(
              height: theme.spaces.space_300,
            ),
            const BoxWidget(
              leadingIcon: Icons.done,
              content: 'aslkdmk',
            ),
            SizedBox(
              height: theme.spaces.space_300,
            ),
            const BoxWidget(
              leadingIcon: Icons.abc,
              content: 'asdqwd',
              trailingIcon: Icons.arrow_forward_ios_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
