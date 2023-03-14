import 'package:auth/src/features/authentication/controllers/signup_controller.dart';
import 'package:auth/src/features/authentication/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      child: Form(
        key: _formKey,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullname,
              decoration: const InputDecoration(
                label: Text(tFullName),
                prefixIcon: Icon(Icons.person_outline_outlined),
              ),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(
                  Icons.email_outlined,
                ),
              ),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                label: Text(tPassword),
                prefixIcon: Icon(Icons.password),
              ),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  if(_formKey.currentState!.validate()){
                     SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());

                    //this code will store in collection instead of authentication
/*
*                   var userName = userNameController.text.trim();
*                   var userEmail = userEmailController.text.trim();
*                   var userPassword = userPasswordController.text.trim();
*                   FirebaseAuth.instance.createUserWithEmailAndPassword(
* email: userEmail, password:userPassword).then((value) =>{ log("usercreated"),
* FirebaseFirestore.instance.collection("users").doc().set({
* 'username': userNmae,
* 'userEmail': userEmail,
* 'userPassword':userPassword, }),
* });
*
*
* */
                    // final user = UserModel(fullName: controller.fullname.text.trim(),
                    //     email: controller.email.text.trim(),
                    //     password: controller.password.text.trim()
                    // );
                    // SignUpController.instance.createUser(user);


                  }
                }, child: Text(tSignup)))
          ],
        ),
      ),
    );
  }
}
