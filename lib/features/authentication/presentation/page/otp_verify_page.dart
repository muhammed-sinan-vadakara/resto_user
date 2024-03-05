import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/authentication/presentation/widgets/elavated_Button_widget.dart';
import 'package:resto_user/features/authentication/presentation/widgets/otp_box_widget.dart';

class OtpVerificationPage extends StatelessWidget {
  static const routePath = "/OtpVerificationPage";
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 124),
                  child: Container(
                    child: SvgPicture.asset(
                        "assets/images/login_background_image.svg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 270),
                  child: Text(
                    "Enter OTP",
                    style: TextStyle(
                      color: theme.colors.text,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OtpBoxWidget(theme: theme),
                    OtpBoxWidget(theme: theme),
                    OtpBoxWidget(theme: theme),
                    OtpBoxWidget(theme: theme),
                    OtpBoxWidget(theme: theme),
                    OtpBoxWidget(theme: theme),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text("00:00"),
                    ),
                    TextButton(onPressed: () {}, child: Text("Resend OTP"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:
          ElevatedButtonWidget(text: "Verify OTP", onPressed: () {}),
    );
  }
}
