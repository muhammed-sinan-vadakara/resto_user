import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/authentication/presentation/widgets/elavated_button_widget.dart';
import 'package:resto_user/features/authentication/presentation/widgets/otp_box_widget.dart';
import 'package:resto_user/features/authentication/presentation/widgets/text_feild_widget.dart';

class OtpVerificationPage extends StatelessWidget {
  static const routePath = "/OtpVerificationPage";
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<AppAssetConstants>();
    final theme = AppTheme.of(context);
    final otpController = useTextEditingController();

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
                    right: 270,
                  ),
                  child: Text(
                    "Enter OTP",
                    style: theme.typography.uiSemibold
                        .copyWith(color: theme.colors.text),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OtpBoxWidget(
                      textFields: TextFeildWidget(
                        textController: otpController,
                      ),
                      theme: theme,
                    ),
                    OtpBoxWidget(
                      textFields: TextFeildWidget(
                        textController: otpController,
                      ),
                      theme: theme,
                    ),
                    OtpBoxWidget(
                      textFields: TextFeildWidget(
                        textController: otpController,
                      ),
                      theme: theme,
                    ),
                    OtpBoxWidget(
                      textFields: TextFeildWidget(
                        textController: otpController,
                      ),
                      theme: theme,
                    ),
                    OtpBoxWidget(
                      theme: theme,
                      textFields: TextFeildWidget(
                        textController: otpController,
                      ),
                    ),
                    OtpBoxWidget(
                      textFields: TextFeildWidget(
                        textController: otpController,
                      ),
                      theme: theme,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 5,
                      ),
                      child: Text(
                        "00:00",
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Resend OTP",
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AuthElevatedButtonWidget(
        colours: theme.colors.primary,
        text: Text(
          "Verify OTP",
          style: theme.typography.uiSemibold
              .copyWith(color: theme.colors.secondary),
        ),
        onPressed: () {},
      ),
    );
  }
}
