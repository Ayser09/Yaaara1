import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../calender/calender.dart';
import '../dashbaord/dashboard.dart';
import '../health/health.dart';

class FitnessPage extends StatelessWidget {
  const FitnessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Center(
            child: Text("NUTRITION FITNESS"),
          ),
        ),
      ),
    );
  }
}
