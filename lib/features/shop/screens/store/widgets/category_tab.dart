import 'package:e_commerce_app/common/widgets/brands/brand_showcase.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children:[Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //--- brands
            TBrandShowcase(
              images: [
                TImages.productImage1,
                TImages.productImage2,
                TImages.productImage3,
              ],
            ),
            TBrandShowcase(
              images: [
                TImages.productImage1,
                TImages.productImage2,
                TImages.productImage3,
              ],
            ),
            SizedBox(height: TSizes.spaceBtwItems),
      
            //--- products
            TSectionHeading(title: "You might like"),
            SizedBox(height: TSizes.spaceBtwItems),
      
            TGridLayout(itemCount: 4, itemBuilder: (_, index) => TProductCardVertical(),),       
            SizedBox(height: TSizes.spaceBtwItems),
      
          ],
        ),
      )]
    );
  }
}
