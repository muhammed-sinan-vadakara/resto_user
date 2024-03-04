import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  static const routePath = "/loginPage";
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child:
                  SvgPicture.asset("assets/images/login_background_image.svg"),
            )
          ],
        ),
      ),
    );
  }
}
