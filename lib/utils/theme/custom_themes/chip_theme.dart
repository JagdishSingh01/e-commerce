import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TChipTheme{
  TChipTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: TColors.grey.withAlpha((0.4 * 255).toInt()),
    selectedColor: TColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    labelStyle: TextStyle(color: TColors.black),
    checkmarkColor: TColors.white
  );

  /* -- Dark Theme -- */
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: TColors.darkerGrey,
    selectedColor: TColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    labelStyle: TextStyle(color: TColors.white),
    checkmarkColor: TColors.white
  );
}