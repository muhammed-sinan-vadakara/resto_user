import 'package:flutter/material.dart';

class SnackBarUtils {
  static void showMessage(String content, BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(content)));
  }
}
