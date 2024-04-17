import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/authentication/authentication_constant.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/authentication/presentation/bloc/authentication_bloc/authentication_bloc.dart';
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
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  void dispose() {
    myFocusNode.dispose();

    super.dispose();
  }

  final otpController1 = TextEditingController();
  final otpController2 = TextEditingController();
  final otpController3 = TextEditingController();
  final otpController4 = TextEditingController();
  final otpController5 = TextEditingController();
  final otpController6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final images = GetIt.I.get<AppAssetConstants>();
    final constants = GetIt.I.get<AuthenticationConstant>();
    final theme = (context);

    final otpController = otpController1.text +
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
              padding: EdgeInsets.symmetric(
                horizontal: theme.spaces.space_300,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: theme.spaces.space_300,
                      bottom: theme.spaces.space_100 * 13,
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
                    padding: EdgeInsets.only(
                      right: theme.spaces.space_100 * 34,
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
                      ),
                      OtpBoxWidget(
                        textFields: OtpTextFeildWidget(
                          textController: otpController2,
                          hintTexts: constants.txtBlank,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      OtpBoxWidget(
                        textFields: OtpTextFeildWidget(
                          keyboardType: TextInputType.number,
                          textController: otpController3,
                          hintTexts: constants.txtBlank,
                        ),
                      ),
                      OtpBoxWidget(
                        textFields: OtpTextFeildWidget(
                          keyboardType: TextInputType.number,
                          textController: otpController4,
                          hintTexts: constants.txtBlank,
                        ),
                      ),
                      OtpBoxWidget(
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
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: theme.spaces.space_50,
                        ),
                        child: const Text(
                          "00:00",
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          context
                              .read<AuthenticationBloc>()
                              .add(LoginWithGoogleEvent());
                          //    onPressed: () => ref
                          // .read(authenticationProvider.notifier)
                          // .googleverification(context),
                        },
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
        colours: context.colors.primary,
        text: Text(
          constants.txtVerifyOtp,
          style: theme.typography.uiSemibold.copyWith(
            color: theme.colors.secondary,
          ),
        ),
        onPressed: () {
          context.watch()<AuthenticationBloc>().add(OtpVerificationEvent(
                otp: otpController,
              ));
        },
      ),
    );
  }
}
