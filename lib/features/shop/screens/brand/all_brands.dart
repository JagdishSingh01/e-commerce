import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/brand/brand_products.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('All Brands'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Heading
              TSectionHeading(title: 'Brands', showActionButton: false),
              SizedBox(height: TSizes.spaceBtwItems),

              //Brand List
              TGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder:
                    (_, index) => TBrandCard(
                      showBorder: true,
                      onTap: () => Get.to(() => BrandProducts()),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
