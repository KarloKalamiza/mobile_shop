import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/utils/theme/custom_themes/appbar_theme.dart';
import 'package:karlo_kalamiza_shop/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:karlo_kalamiza_shop/utils/theme/custom_themes/custom_checkbox_theme.dart';
import 'package:karlo_kalamiza_shop/utils/theme/custom_themes/custom_chip_theme.dart';
import 'package:karlo_kalamiza_shop/utils/theme/custom_themes/custom_outlined_button.dart';
import 'package:karlo_kalamiza_shop/utils/theme/custom_themes/custom_textfield_theme.dart';
import 'package:karlo_kalamiza_shop/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:karlo_kalamiza_shop/utils/theme/custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CustomTextTheme.lightTextTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: CustomChipTheme.lightChipTheme,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    checkboxTheme: CustomCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CustomInputDecorationTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: CustomTextTheme.darkTextTheme,
      elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
      chipTheme: CustomChipTheme.darkChipTheme,
      appBarTheme: CustomAppBarTheme.darkAppBarTheme,
      checkboxTheme: CustomCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
      outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: CustomInputDecorationTheme.darkInputDecorationTheme
  );
}