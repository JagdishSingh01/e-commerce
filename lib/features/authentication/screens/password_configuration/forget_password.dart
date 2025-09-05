import 'package:e_commerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TTexts.tForgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: TSizes.spaceBtwInputFields),

            Text(
              TTexts.tForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: TSizes.spaceBtwItems*3),

            TextFormField(
              // controller: TextEditingController(),
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: 'E-mail',
                floatingLabelStyle: TextStyle(
                  color: dark ? TColors.grey : TColors.dark,
                ),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems),

            //submit
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => ResetPassword()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: TColors.primary,
                  foregroundColor: TColors.light,
                  side: BorderSide.none
                ),
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}