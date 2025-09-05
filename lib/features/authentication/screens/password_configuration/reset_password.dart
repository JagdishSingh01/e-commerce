import 'package:e_commerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.off(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear), 
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              SizedBox(
                width: THelperFunctions.screenWidth() * 0.8, 
                height: THelperFunctions.screenHeight() * 0.35,
                child: Image.asset(
                  TImages.deliveredEmailIllustration,
                  fit: BoxFit.contain, // Try cover, fill, or scaleDown if needed
                ),
              ),
              SizedBox(height: TSizes.spaceBtwSections*1.5),

              /// Title and subtitle
              Text(
                TTexts.resetTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              Text(
                "jatinpawar354@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTexts.resetSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),

              /// Buttons
              SizedBox(height: TSizes.spaceBtwSections),
            // sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() =>
                  SuccessScreen(
                    image: TImages.accountCreated,
                    title: TTexts.yourAccountCreatedTitle,
                    subTitle: TTexts.yourAccountCreatedSubTitle,
                    onPressed: () => Get.offAll(LoginScreen()),
                  )
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: TColors.primary,
                  foregroundColor: TColors.light,
                  side: BorderSide.none
                ),
                child: Text("Done"),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems),

            // create account button
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: (){}, 
                child: Text(
                  TTexts.resendEmail, 
                  style: TextStyle(
                    color: dark ? TColors.light : TColors.black
                  ),
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}