import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../profile/widgets/profile_menu.dart';
class ReminderScreen extends StatelessWidget {
   ReminderScreen({Key? key}) : super(key: key);
  // var isDark= MediaQuery.of(context).platformBrightness == Brightness.dark;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              ProfileMenuWidget(title: 'MEDITATION REMINDERS', icon: Icons.snowshoeing, onPress: () {  }, endIcon: false, ),
              ProfileMenuWidget(title: 'WAKEUP REMINDERS', icon: Icons.alarm, onPress: () {  }, endIcon: false, ),
            ],
          ),
        ),
      ),
    );;
  }
}
