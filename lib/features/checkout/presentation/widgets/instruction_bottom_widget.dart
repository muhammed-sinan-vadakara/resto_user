import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/checkout_page/checkout_page_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/widgets/elevated_button_widget.dart';

class InstructionBottomWidget extends StatelessWidget {
  final String leadingIcon;
  final String content;
  final TextStyle? style;
  final void Function() onPressed;
  final TextEditingController? controller;

  const InstructionBottomWidget({
    super.key,
    required this.leadingIcon,
    required this.content,
    this.style,
    required this.onPressed,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final constants = GetIt.I.get<CheckoutPageConstants>();
    final theme = AppTheme.of(context);
    // final TextEditingController instructionController = TextEditingController();

    void showBottomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: theme.spaces.space_300),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_300),
              child: Text(
                constants.txtSpecialInstruction,
                style: theme.typography.h400.copyWith(
                  fontSize: theme.spaces.space_200,
                ),
              ),
            ),
            SizedBox(height: theme.spaces.space_100),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_300),
              child: const Divider(),
            ),
            SizedBox(height: theme.spaces.space_200),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_300),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: constants.txtEnterSplInstruction,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(theme.spaces.space_100),
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButtonWidget(text: constants.txtAdd, onPressed: onPressed),
          ],
        ),
      );
    }

    return Container(
      height: theme.spaces.space_700,
      decoration: BoxDecoration(
        color: theme.colors.secondary,
        boxShadow: [theme.boxShadow.secondary],
        borderRadius: BorderRadius.circular(
          theme.spaces.space_150,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_50),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
              width: 25,
              child: SvgPicture.asset(
                leadingIcon,
                colorFilter:
                    const ColorFilter.mode(Colors.black, BlendMode.srcATop),
              ),
            ),
            SizedBox(
              width: theme.spaces.space_100,
            ),
            Text(
              content,
              style: style,
            ),
            const Expanded(
              child: SizedBox(),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios_outlined, size: 20),
              onPressed: () {
                showBottomSheet();
              },
            )
          ],
        ),
      ),
    );
  }
}
