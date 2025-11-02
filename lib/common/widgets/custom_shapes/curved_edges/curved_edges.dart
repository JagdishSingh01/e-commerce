import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Start from top-left → go down to bottom-left
    path.lineTo(0, size.height);

  // Small left curve
    final firstCurve = Offset(0, size.height -20);
    final lastCurve = Offset(30, size.height - 20);
    // quadraticBezierTo(controlX, controlY, endX, endY)
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

     // Straight line across bottom (no real curve here)
    path.lineTo(size.width - 30, size.height - 20);

    // Small right curve
    final thirdFirstCurve = Offset(size.width , size.height - 20);
    final thirdLastCurve = Offset(size.width, size.height );
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy, thirdLastCurve.dx, thirdLastCurve.dy);

    // Right edge → top-right → close path
    path.lineTo(size.width , 0);
    path.close();
    return path;
  } 

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

  
}