import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key
  });

 

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: const EdgeInsets.only(
        left: TSizes.md,
        right: TSizes.sm,
        top: TSizes.sm,
        bottom: TSizes.sm,
      ),
      child: Row(
        children: [
          //textfield
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter coupon code',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
    
          //apply button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor:dark? TColors.white.withAlpha(127) : TColors.dark.withAlpha(127),
                backgroundColor: TColors.grey.withAlpha(51),
                side: BorderSide(color: TColors.grey.withAlpha(25)),
                
              ),
              child: Text("Apply"),
            ),
          ),
        ],
      ),
    );
  }
}
