import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1---product image sliider
            TProductImageSlider(),

            /// 2--- Product details
            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace, left:TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // - rating & share widget
                  TRatingAndShare(),

                  // - price, title, stock & brand
                  TProductMetaData(),

                  // - Attributes
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
