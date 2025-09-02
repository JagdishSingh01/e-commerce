import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            //form fields
            TextFormField(
              // controller: TextEditingController(),
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: 'Email',
                floatingLabelStyle: TextStyle(
                  color: dark ? TColors.grey : TColors.dark,
                ),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
              // controller: TextEditingController(),
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: 'Password',
                floatingLabelStyle: TextStyle(
                  color: dark ? TColors.grey : TColors.dark,
                ),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwInputFields / 2),

            // remember me and forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(TTexts.tRememberMe),
                  ],
                ),

                //forgot password
                TextButton(
                  onPressed: () {},
                  child: Text(
                    TTexts.tForgotPassword,
                    style: TextStyle(color: TColors.darkGrey),
                  ),
                ),
              ],
            ),
            SizedBox(height: TSizes.spaceBtwSections),
            // sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: TColors.primary,
                  foregroundColor: TColors.light,
                ),
                child: Text('Sign In'),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems),

            // create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: dark ? TColors.darkGrey : TColors.grey,
                  ),
                  foregroundColor: dark ? TColors.light : TColors.dark,
                ),
                onPressed: () {},
                child: Text('Create Account'),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
