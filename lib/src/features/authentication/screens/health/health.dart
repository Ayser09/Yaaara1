import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';


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