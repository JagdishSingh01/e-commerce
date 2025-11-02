import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({super.key, this.width, this.height, this.size, required this.icon, this.color, this.backgroundColor, this.onPressed});

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null 
            ? backgroundColor! 
            : THelperFunctions.isDarkMode(context) 
                ? TColors.black.withAlpha(230) 
                : TColors.white.withAlpha(230), // 90% opacity
      ),
      child: IconButton(
        icon: Icon(icon , color: color, size: size,),
        onPressed: onPressed,
      ),
    );
  }
}