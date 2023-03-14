import 'package:auth/src/features/authentication/controllers/profile_controller.dart';
import 'package:auth/src/features/authentication/models/user_model.dart';
import 'package:auth/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //from where the data is coming make controller so using this controller call data inside future builder
      final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(), icon: Icon(LineAwesomeIcons.angle_left),),
        title: Text(tEditProfile, style: Theme.of(context).textTheme.headline4),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: FutureBuilder(
            //store data inside this future
            future: controller.getUserData(),
            //we can add getAllUser() to view all the accounts present could do this for admin section to view all users watch video 15.30 19vid if needed
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.hasData){
                  //to map data or pass data to user model so use it as initial values
                  UserModel userData = snapshot.data as UserModel;
                  return Column(
                    children:  [
                      Stack(
                        children: [
                          SizedBox(
                            width: 120, height: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Icon(Icons.person),

                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                                width: 35, height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: tPrimaryColor,
                                ),
                                child: Icon(LineAwesomeIcons.camera, color: Colors.black ,size: 20.0, )),
                          )
                        ],
                      ),
                      SizedBox( height: 50),
                      Form(child: Column(
                        children: [
                          TextFormField(
                            initialValue: userData.fullName,
                            decoration: const InputDecoration(
                              label: Text(tFullName),
                              prefixIcon: Icon(Icons.person_outline_outlined),
                            ),
                          ),
                          SizedBox(
                            height: tFormHeight - 20,
                          ),
                          TextFormField(
                            initialValue: userData.email,
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
                            initialValue: userData.password,
                            decoration: const InputDecoration(
                              label: Text(tPassword),
                              prefixIcon: Icon(Icons.password),
                            ),
                          ),
                          SizedBox(height: tFormHeight,),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: ()=> Get.to(() => UpdateProfileScreen()),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: tPrimaryColor, side: BorderSide.none, shape: StadiumBorder()
                              ),
                              child: Text(tEditProfile, style: TextStyle(color: tDarkColor)),

                            ),
                          )
                        ],
                      ))
                    ],
                  );
                }else if(snapshot.hasError){
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }else {
                  return Center(
                    child: Text("Something Went Wrong"),
                  );
                }
              }else{
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          ),
        ),
      );
  }
}
