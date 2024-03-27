import 'package:flutter/material.dart';
import 'package:resto_user/core/themes/app_theme.dart';

class FeedbackTextFieldWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final int? maxLines;
  const FeedbackTextFieldWidget(
      {super.key,
      required this.controller,
      required this.title,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.spaces.space_300),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.typography.h400,
          ),
          SizedBox(
            height: context.spaces.space_100,
          ),
          TextField(
            maxLines: null,
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: context.colors.textDisabled,
                        width: context.spaces.space_25),
                    borderRadius:
                        BorderRadius.circular(context.spaces.space_100)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: context.colors.textDisabled,
                        width: context.spaces.space_25),
                    borderRadius:
                        BorderRadius.circular(context.spaces.space_100))),
          ),
        ],
      ),
    );
  }
}
