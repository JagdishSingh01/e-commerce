import 'package:e_commerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
     final dark = THelperFunctions.isDarkMode(context);
      return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight() ,
        child: ElevatedButton(
          
          onPressed: () => OnBoardingController.instance.nextPage(), 
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.primary : TColors.dark, // Button color
          
          ),
          child: Icon(Iconsax.arrow_right_3, color: TColors.light ), 
        ),
      );
  }
}