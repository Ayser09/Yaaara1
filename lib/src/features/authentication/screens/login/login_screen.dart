import 'package:auth/src/constants/image_strings.dart';
import 'package:auth/src/constants/sizes.dart';
import 'package:auth/src/constants/text_strings.dart';
import 'package:auth/src/features/authentication/screens/login/widgets/login_footer_widget.dart';
import 'package:auth/src/features/authentication/screens/login/widgets/login_header_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/login_form_widget.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = MediaQuery.of(context).size.height;
    var brightness = MediaQuery.platformBrightnessOf;
    final isDarkMode = brightness == Brightness.dark;
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget(size: size),
                const LoginForm(),
                LoginFooterWidget(),

                //section3
              ],
            ),
          ),
        ),
      ),
    );
  }
}


