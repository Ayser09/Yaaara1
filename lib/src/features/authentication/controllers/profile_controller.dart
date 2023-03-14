import 'package:auth/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../repository/user_repository/user_repository.dart';
import '../models/user_model.dart';

class ProfileController extends GetxController{
static ProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());
///Get user Email and pass to User Repository to fetch user record
//email, name ,uid
getUserData(){
   final email = _authRepo.firebaseUser.value?.email;
   if(email!= null){
     _userRepo.getUserDetails(email);
   }else{
     Get.snackbar("Error", "Login to continue");
   }
 }
// Future<List <UserModel>> getAllUser(){
//   return _userRepo.allUser();
// }
}
