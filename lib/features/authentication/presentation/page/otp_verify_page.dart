import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/authentication/presentation/widgets/otp_box_widget.dart';

class OtpVerificationPage extends StatelessWidget {
  static const routePath = "/OtpVerificationPage";
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Scaffold(
      body: SafeArea(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
