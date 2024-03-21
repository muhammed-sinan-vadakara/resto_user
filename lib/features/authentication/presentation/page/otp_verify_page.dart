import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/authentication/authentication_constant.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/authentication/presentation/widgets/elavated_button_widget.dart';
import 'package:resto_user/features/authentication/presentation/widgets/otp_box_widget.dart';
import 'package:resto_user/features/authentication/presentation/widgets/otp_text_feild_widget.dart';

class OtpVerificationPage extends StatefulWidget {
  static const routePath = "/OtpVerificationPage";
  const OtpVerificationPage({super.key});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  // late FocusNode myFocusNode;

  // @override
  // void initState() {
  //   super.initState();

  //   myFocusNode = FocusNode();
  // }

  // void dispose() {
  //   myFocusNode.dispose();

  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final images = GetIt.I.get<AppAssetConstants>();
    final constants = GetIt.I.get<AuthenticationConstant>();
    final theme = AppTheme.of(context);
    final otpController1 = TextEditingController();
    final otpController2 = TextEditingController();
    final otpController3 = TextEditingController();
    final otpController4 = TextEditingController();
    final otpController5 = TextEditingController();
    final otpController6 = TextEditingController();

    final otp = otpController1.text +
        otpController2.text +
        otpController3.text +
        otpController4.text +
        otpController5.text +
        otpController6.text;

    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
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
                        images.image,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 270,
                    ),
                    child: Text(
                      constants.txtOtp,
                      style: theme.typography.uiSemibold
                          .copyWith(color: theme.colors.text),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OtpBoxWidget(
                        textFields: OtpTextFeildWidget(
                          textController: otpController1,
                          hintTexts: constants.txtBlank,
                          keyboardType: TextInputType.number,
                        ),
                        theme: theme,
                      ),
                      OtpBoxWidget(
                        textFields: OtpTextFeildWidget(
                          textController: otpController2,
                          hintTexts: constants.txtBlank,
                          keyboardType: TextInputType.number,
                        ),
                        theme: theme,
                      ),
                      OtpBoxWidget(
                        textFields: OtpTextFeildWidget(
                          keyboardType: TextInputType.number,
                          textController: otpController3,
                          hintTexts: constants.txtBlank,
                        ),
                        theme: theme,
                      ),
                      OtpBoxWidget(
                        textFields: OtpTextFeildWidget(
                          keyboardType: TextInputType.number,
                          textController: otpController4,
                          hintTexts: constants.txtBlank,
                        ),
                        theme: theme,
                      ),
                      OtpBoxWidget(
                        theme: theme,
                        textFields: OtpTextFeildWidget(
                          textController: otpController5,
                          keyboardType: TextInputType.number,
                          hintTexts: constants.txtBlank,
                        ),
                      ),
                      OtpBoxWidget(
                        textFields: OtpTextFeildWidget(
                          textController: otpController6,
                          hintTexts: constants.txtBlank,
                          keyboardType: TextInputType.number,
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
                        child: Text(
                          constants.txtResendOtp,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: AuthElevatedButtonWidget(
        colours: theme.colors.primary,
        text: Text(
          constants.txtVerifyOtp,
          style: theme.typography.uiSemibold.copyWith(
            color: theme.colors.secondary,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
