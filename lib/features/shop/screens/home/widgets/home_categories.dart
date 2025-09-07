import 'package:e_commerce_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: TSizes.defaultSpace),
      child: Column(
        children: [
          TSectionHeading(
            title: 'Popular Categories',
            showActionButton: false,
            textColor: Colors.white,
          ),
          SizedBox(height: TSizes.spaceBtwItems),
    
          // Categories List
          SizedBox(
            height: 80,
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return TVerticalImageText(
                  title: 'Shoes Category',
                  image: TImages.shoeIcon,
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

