import 'package:auth/firebase_options.dart';
import 'package:auth/src/features/authentication/screens/Fitness/fitness.dart';
import 'package:auth/src/features/authentication/screens/calender/calender.dart';
import 'package:auth/src/features/authentication/screens/dashbaord/dashboard.dart';
import 'package:auth/src/features/authentication/screens/dashbaord/widgets/bottom_navbar.dart';
import 'package:auth/src/features/authentication/screens/health/health.dart';
import 'package:auth/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:auth/src/repository/authentication_repository/authentication_repository.dart';

import 'package:auth/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.darkTheme,
      darkTheme: TAppTheme.lightTheme,
      themeMode: ThemeMode.dark,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      )
      //welcome screen for yellow bg CircularProgressIndicator
    );
  }
}

