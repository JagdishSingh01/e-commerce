import 'package:flutter/material.dart';

class TChipTheme{
  TChipTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static ChipThemeData lightChipTheme = ChipThemeData(
    // backgroundColor: Colors.grey[200]!,
    disabledColor: Colors.grey[300]!,
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    labelStyle: TextStyle(color: Colors.black),
    brightness: Brightness.light,
    checkmarkColor: Colors.white
  );

  /* -- Dark Theme -- */
  static ChipThemeData darkChipTheme = ChipThemeData(
    // backgroundColor: Colors.grey[800]!,
    disabledColor: Colors.grey[700]!,
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    labelStyle: TextStyle(color: Colors.black),
    brightness: Brightness.dark,
    checkmarkColor: Colors.white
  );
}