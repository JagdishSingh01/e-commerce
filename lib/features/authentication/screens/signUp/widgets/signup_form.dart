import 'package:e_commerce_app/features/authentication/screens/signUp/widgets/terms_conditions_checkbox.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
          child: Column(
            children: [
              //form fields
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      // controller: TextEditingController(),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: 'First Name',
                        floatingLabelStyle: TextStyle(
                          color: dark ? TColors.grey : TColors.dark,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: TSizes.spaceBtwInputFields),
                  Expanded(
                    child: TextFormField(
                      // controller: TextEditingController(),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: 'Last Name',
                        floatingLabelStyle: TextStyle(
                          color: dark ? TColors.grey : TColors.dark,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: TSizes.spaceBtwInputFields),
        
              //username
              TextFormField(
                // controller: TextEditingController(),
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user_tag),
                  labelText: 'Username',
                  floatingLabelStyle: TextStyle(
                    color: dark ? TColors.grey : TColors.dark,
                  ),
                ),
              ),
        
              SizedBox(height: TSizes.spaceBtwInputFields),
              
              //email
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
        
              // Phone Number
              TextFormField(
                // controller: TextEditingController(),
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.call),
                  labelText: 'Phone Number',
                  floatingLabelStyle: TextStyle(
                    color: dark ? TColors.grey : TColors.dark,
                  ),
                ),
              ),
              SizedBox(height: TSizes.spaceBtwInputFields),
        
              //password
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
              SizedBox(height: TSizes.spaceBtwSections),
        
              // terms and conditions
              TTermsAndConditionCheckbox(),
              SizedBox(height: TSizes.spaceBtwSections),
        
              // create account button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: TColors.primary,
                    foregroundColor: TColors.light,
                    side: BorderSide.none
                  ),
                  child: Text('Create Account'),
                ),
              ),
              SizedBox(height: TSizes.spaceBtwItems),
        
            ],
          ),
        ),
      
    );
  }
}
