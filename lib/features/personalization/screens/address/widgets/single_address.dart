import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      padding: EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor:
          selectedAddress
              ? TColors.primary.withAlpha((0.1 * 255).toInt())
              : Colors.transparent,
      borderColor:
          selectedAddress
              ? Colors.transparent
              : dark
              ? TColors.darkGrey
              : TColors.grey,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color:
                  selectedAddress
                      ? dark
                          ? TColors.light
                          : TColors.dark.withAlpha((0.3 * 255).toInt())
                      : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Harry Potter",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSizes.sm / 2),
              const Text("(+91) 812 645 6132",  maxLines: 1, overflow: TextOverflow.ellipsis,),
              const SizedBox(height: TSizes.sm / 2),
              const Text("262308 Baggha Colony, Khatima, U.S. Nagar, Uttarakhand, India")
            ],
          ),
        ],
      ),
    );
  }
}
