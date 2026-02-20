import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark= THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 05,
      separatorBuilder: (_,__) => SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder:(_,index) => TRoundedContainer(
        showBorder: true,
        backgroundColor: dark ? TColors.dark : TColors.light,
        padding: const EdgeInsets.all(TSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //row 1
            Row(
              children: [
                // 1 - icon
                Icon(Iconsax.ship),
                SizedBox(width: TSizes.spaceBtwItems/2,),
      
                // 2- status and date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary, fontWeightDelta: 1),
                      ),
                      Text(
                        '12 Jan, 2024',
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  ),
                ),
      
                // 3- icon
                IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34, size: TSizes.iconSm,))
              ],
            ),
      
            const SizedBox(height: TSizes.spaceBtwItems),
            //row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 1 - icon
                      Icon(Iconsax.tag),
                      SizedBox(width: TSizes.spaceBtwItems/2,),
      
                      // 2- status and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '[#256f2]',
                              style: Theme.of(context).textTheme.titleMedium,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      
                Expanded(
                  child: Row(
                    children: [
                      // 1 - icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: TSizes.spaceBtwItems/2,),
      
                      // 2- status and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipped date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '20 Jan, 2024',
                              style: Theme.of(context).textTheme.titleMedium,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
            
          ]
        ),
      ),
    );
  }
}
