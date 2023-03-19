import 'package:auth/src/features/authentication/screens/dashbaord/dashboard.dart';
import 'package:auth/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:auth/src/features/authentication/screens/main_page/main_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../../../controllers/signup_controller.dart';
import '../../forget_password/forget_password_options/forget_password_btn_widget.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool passwordObscured = true;
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: tEmail,
                  hintText: tEmail,
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: passwordController,
              obscureText: passwordObscured,
              decoration: InputDecoration(
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      passwordObscured =! passwordObscured;
                    });
                  },
                      icon: passwordObscured?  Icon(Icons.visibility_off) : Icon(Icons.visibility))
              ),
            ),
            SizedBox(
              height: tFormHeight - 30,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        builder: (context) => Container(
                          padding: EdgeInsets.all(tDefaultSize),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tForgetPasswordTitle,
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              ForgetPasswordButtonWidget(
                                btnIcon: Icons.mail_outline_rounded,
                                title: tEmail,
                                subTitle: '',
                                onTap: () {
                                  Navigator.pop(context);
                                  Get.to(() => ForgetPasswordMailScreen());
                                },
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    child: Text(tForgotPassword))),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async {
                      var loginEmail = emailController.text.trim();
                      var loginPassword = passwordController.text.trim();
                      try {
                        final User? firebaseUser = (await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: loginEmail, password: loginPassword))
                            .user;
                        if (firebaseUser != null) {
                          Get.to(() => MainPage());
                        } else {
                          print("Check Email and password");
                        }
                      } on FirebaseAuthException catch (e) {
                        print("Error $e");
                      } catch (_) {}
                    },
                    child: Text(tLogin)))
          ],
        ),
      ),
    );
  }
}
