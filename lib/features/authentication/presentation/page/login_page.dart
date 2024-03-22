import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/authentication/authentication_constant.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/authentication/presentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:resto_user/features/authentication/presentation/widgets/auth_text_feild_widget.dart';
import 'package:resto_user/features/authentication/presentation/widgets/elavated_button_widget.dart';

class LoginPage extends HookWidget {
  static const routePath = "/loginPage";

  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final images = GetIt.I.get<AppAssetConstants>();
    final constants = GetIt.I.get<AuthenticationConstant>();
    final theme = AppTheme.of(context);
    final phoneNumberController = useTextEditingController();

    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 24,
                      bottom: 64,
                    ),
                    child: SizedBox(
                      // height: MediaQuery.sizeOf(context).height,
                      width: MediaQuery.sizeOf(context).width,
                      child: SvgPicture.asset(
                        images.image,
                      ),
                    ),
                  ),
                  Text(
                    constants.txtMobileNumber,
                    style: theme.typography.uiSemibold
                        .copyWith(color: theme.colors.text),
                  ),
                  AuthTextFieldWidget(
                    Controller: phoneNumberController,
                    hintText:
                        constants.txtEnterYour + constants.txtMobileNumber,
                    keyboardType: TextInputType.phone,
                    cursor: true,
                    onChanged: (p0) {},
                    style: TextStyle(),
                  )
                ],
              ),
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
                constants.txtSendOtp,
                style: theme.typography.uiSemibold.copyWith(
                  color: theme.colors.secondary,
                ),
              ),
              onPressed: () {
                context.read<AuthenticationBloc>().add(
                    LoginWithPhoneNumberEvent(
                        phoneNumber: phoneNumberController.text));
              }),
          AuthElevatedButtonWidget(
            colours: theme.colors.textDisabled,
            text: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SvgPicture.asset(
                    images.icGoogle,
                  ),
                ),
                Text(
                  constants.txtSignupGoogle,
                  style: theme.typography.uiSemibold.copyWith(
                    color: theme.colors.text,
                  ),
                ),
              ],
            ),
            onPressed: () {
              context.read<AuthenticationBloc>().add(LoginWithGoogleEvent());
            },
          ),
          SizedBox(
            height: AppTheme.of(context).spaces.space_200,
          )
        ],
      ),
    );
  }
}
