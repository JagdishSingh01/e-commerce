import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/theme/custom_thems/text_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_thems/elevated_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_thems/appbar_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_thems/outlined_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_thems/text_field_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_thems/checkbox_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_thems/chip_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_thems/bottom_sheet_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    chipTheme: TChipTheme.lightChipTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    chipTheme: TChipTheme.darkChipTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme
  );
}
