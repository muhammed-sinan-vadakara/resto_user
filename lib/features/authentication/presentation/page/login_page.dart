import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/authentication/presentation/widgets/elavated_button_widget.dart';
import 'package:resto_user/features/authentication/presentation/widgets/text_feild_widget.dart';

class LoginPage extends StatefulHookWidget {
  static const routePath = "/loginPage";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<AppAssetConstants>();
    final theme = AppTheme.of(context);
    final phoneNumberController = useTextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24,
                    bottom: 104,
                  ),
                  child: SizedBox(
                    // height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width,
                    child: SvgPicture.asset(
                      constants.image,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 190,
                  ),
                  child: Text(
                    "Enter Mobile Number",
                    style: theme.typography.uiSemibold
                        .copyWith(color: theme.colors.text),
                  ),
                ),
                TextFeildWidget(textController: phoneNumberController)
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AuthElevatedButtonWidget(
            colours: theme.colors.primary,
            text: Text(
              "Send OTP",
              style: theme.typography.uiSemibold.copyWith(
                color: theme.colors.secondary,
              ),
            ),
            onPressed: () {},
          ),
          AuthElevatedButtonWidget(
            colours: theme.colors.textDisabled,
            text: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SvgPicture.asset(
                    constants.icGoogle,
                  ),
                ),
                Text(
                  "Sign up with Google",
                  style: theme.typography.uiSemibold.copyWith(
                    color: theme.colors.text,
                  ),
                ),
              ],
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
