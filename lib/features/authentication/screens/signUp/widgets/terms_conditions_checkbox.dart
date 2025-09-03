import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        RichText(
          text: TextSpan(
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: TColors.darkGrey),
            children: [
              const TextSpan(text: 'I agree to '),
              TextSpan(
                text: 'Privacy Policy ',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  color: dark ? TColors.light : TColors.primary,
                  decorationColor: dark ? TColors.light : TColors.primary,
                ),
              ),
              const TextSpan(text: 'and '),
              TextSpan(
                text: 'Terms of Use',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  color: dark ? TColors.light : TColors.primary,
                  decorationColor: dark ? TColors.light : TColors.primary,
                ),
              ),
            ],
          ),
        ),
        // Text("I agree to Privacy Policy and Terms of Use"),
      ],
    );
  }
}
