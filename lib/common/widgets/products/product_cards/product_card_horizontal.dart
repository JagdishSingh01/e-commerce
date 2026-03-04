import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/product_detail.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    // container for the product card

    return GestureDetector(
      onTap: () => Get.to(() => ProductDetailScreen()),
      child: Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.lightGrey,
        ),
        child: Row(
          children: [
            /// thumbnail, wishlist button, Discount tag
            TRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.white,
              child: Stack(
                children: [
                  // Thumbnail Image
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: TRoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true,)),

                  // Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withAlpha(
                        204,
                      ), // 80% opacity
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: TColors.black),
                      ),
                    ),
                  ),

                  // Wishlist Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: TSizes.spaceBtwItems / 2),

            // Product Details
            SizedBox(
              width: 172,
              child: Padding(
                padding: const EdgeInsets.only(top:TSizes.sm, left: TSizes.sm),
                child: Column(
                  children:[      
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TProductTitleText(title: "Green Nike Air Shoes",smallSize: true,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems / 2),
                        TBrandTitleWithVerifiedIcon(title:  "Nike",),
                      ],
                    ),

                    Spacer(),
                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //price
                        Flexible(child: TProductPriceText(price: '35.9')),
                    
                        //add to cart button
                        Container(
                          decoration: BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight: Radius.circular(TSizes.productImageRadius),
                            ),
                          ),
                          child: SizedBox(
                            width: TSizes.iconLg * 1.2,
                            height: TSizes.iconLg * 1.2,
                            child: const Icon(Iconsax.add, color: TColors.white),
                          ),
                        ),
                      ],
                    ),
                  ] 
                ),
              ),
            ),          
          ],
        ),
      ),
    );
  }
}
