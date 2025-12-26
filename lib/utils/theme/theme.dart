import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/text_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/bottom_sheet_theme.dart';

class TAppTheme {
  TAppTheme._();// private constructor — prevents instantiation


  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: TColors.white,
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
    brightness: Brightness.dark,
    disabledColor: TColors.grey,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: TColors.black,
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
