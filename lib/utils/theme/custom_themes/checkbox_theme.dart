import 'package:flutter/material.dart';

class TCheckboxTheme {
  TCheckboxTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      }else{
        return Colors.transparent;
      }
    }),
    side: BorderSide(color: Colors.grey),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );

  /* -- Dark Theme -- */
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      }else{
        return Colors.transparent;
      }
    }),
    side: BorderSide(color: Colors.grey),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );
}