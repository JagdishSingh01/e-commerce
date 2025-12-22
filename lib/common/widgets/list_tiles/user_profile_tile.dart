import 'package:e_commerce_app/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfile extends StatelessWidget {
  const TUserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(image: TImages.user, width: 50,height: 50, padding: 0,),
      title: Text("Major Hamster",
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
      subtitle: Text("majorhamr@gmail.com",
            style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
      trailing: IconButton(onPressed: (){}, icon: Icon(Iconsax.edit,color: TColors.white)),
    );
  }
}