import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

import '../Fitness/fitness.dart';
import '../calender/calender.dart';
import '../dashbaord/dashboard.dart';
class HealthPage extends StatelessWidget {
  const HealthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScaffoldGradientBackground(
        gradient: LinearGradient(colors: [
          Color(0xFF8EC5FC),
          Color(0xFFE0C3FC),
        ]),

        body: SingleChildScrollView(
          child: Center(
            child: Text("HEALTH"),
          ),
        ),
      ),
    );
  }
}
