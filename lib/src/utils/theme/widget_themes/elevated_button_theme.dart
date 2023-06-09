import 'package:auth/src/constants/colors.dart';
import 'package:auth/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class TElevatedButtonTheme{
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: BorderSide(color: tSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight)
    )
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: tSecondaryColor,
          backgroundColor: tWhiteColor,
          side: BorderSide(color: tSecondaryColor),
          padding: EdgeInsets.symmetric(vertical: tButtonHeight)
      )
  );
}