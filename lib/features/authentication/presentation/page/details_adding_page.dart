import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/core/constants/authentication/authentication_constant.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/authentication/presentation/widgets/auth_text_feild_widget.dart';
import 'package:resto_user/features/authentication/presentation/widgets/elavated_button_widget.dart';

class DetailsAddingPage extends StatelessWidget {
  static const routePath = "/DetailsAdding";
  const DetailsAddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final imagesAndIcons = GetIt.I.get<AppAssetConstants>();
    final constants = GetIt.I.get<AuthenticationConstant>();
    final nameController = TextEditingController();
    final theme = AppTheme.of(context);

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: theme.spaces.space_300,
                      bottom: theme.spaces.space_200,
                    ),
                    child: SizedBox(
                      // height: MediaQuery.sizeOf(context).height,
                      width: MediaQuery.sizeOf(context).width,
                      child: SvgPicture.asset(
                        imagesAndIcons.image,
                      ),
                    ),
                  ),
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: theme.spaces.space_25,
                              color: theme.colors.textDisabled,
                            ),
                            borderRadius: BorderRadius.circular(
                              theme.spaces.space_100 * 13,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: theme.spaces.space_125 * 5,
                            backgroundColor: theme.colors.secondary,
                            child: Center(
                                child: SvgPicture.asset(
                              imagesAndIcons.icUser,
                            )),
                          ),
                        ),
                        Positioned(
                          left: theme.spaces.space_125 * 7,
                          top: theme.spaces.space_125 * 7,
                          child: CircleAvatar(
                            radius: theme.spaces.space_200,
                            backgroundColor: theme.colors.primary,
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(
                                  theme.spaces.space_25 * 3,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    imagesAndIcons.icPencil,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    constants.txtName,
                    style: theme.typography.uiSemibold
                        .copyWith(color: theme.colors.text),
                  ),
                  SizedBox(
                    height: theme.spaces.space_100,
                  ),
                  AuthTextFieldWidget(
                      hintText: constants.txtEnterYour + constants.txtName,
                      style: const TextStyle(),
                      Controller: nameController)
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: AuthElevatedButtonWidget(
        colours: theme.colors.primary,
        text: Text(
          constants.txtSave,
          style: theme.typography.uiSemibold.copyWith(
            color: theme.colors.secondary,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
