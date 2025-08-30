import 'package:flutter/material.dart';

class TBottomSheetTheme {
  TBottomSheetTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    elevation: 10,
    modalElevation: 10,
    clipBehavior: Clip.antiAlias,
    constraints: BoxConstraints(
      minWidth: double.infinity
    ),
  );

  /* -- Dark Theme -- */
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    backgroundColor: Colors.grey[900],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    elevation: 10,
    modalElevation: 10,
    clipBehavior: Clip.antiAlias,
    constraints: BoxConstraints(
      minWidth: double.infinity
    ),
  );
}