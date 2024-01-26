import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/common/widgets/rounded_image.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/profile/profile_details.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const RoundedImage(
        imageUrl: CustomImages.google,
        width: 50,
        height: 50,
        padding: EdgeInsets.all(10),
      ),
      title: Text("Rafael Nadal", style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),),
      subtitle: Text("RafaelNadal@gmail.com", style: Theme.of(context).textTheme.bodySmall!.apply(color: Colors.white),),
      trailing: IconButton(
        icon: const Icon(Iconsax.edit),
        color: Colors.white,
        onPressed: () => Get.to(const ProfileDetails()),
      ),
    );
  }
}