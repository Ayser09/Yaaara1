import 'package:auth/src/common_widgets/form/form_header_widget.dart';
import 'package:auth/src/constants/colors.dart';
import 'package:auth/src/constants/image_strings.dart';
import 'package:auth/src/constants/sizes.dart';
import 'package:auth/src/constants/text_strings.dart';
import 'package:auth/src/features/authentication/screens/login/login_screen.dart';
import 'package:auth/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                    image: tWelcomeScreenImage,
                    title: tSignUpTitle,
                    subTitle: tSignUpSubTitle),

                SignUpForm(),

                Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Get.to(() => const LoginScreen());
                        },
                        child: Text.rich(TextSpan(
                          text: tDontHaveAnAccount,
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                                text: tLogin,
                                style: TextStyle(color: Colors.lightBlue))
                          ],
                        ))),
                  ],
                )

                // LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
