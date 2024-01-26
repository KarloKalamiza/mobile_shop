import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/custom_appbar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/rounded_image.dart';
import 'package:karlo_kalamiza_shop/common/widgets/section_heading.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text("Profile", style: Theme.of(context).textTheme.headlineMedium!.apply(color: dark ? Colors.white : Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    // Profile image
                    const RoundedImage(imageUrl: CustomImages.google, width: 100, height: 100, padding: EdgeInsets.all(10),),
                    const SizedBox(height: CustomSizes.spaceBtwItems / 2,),
                    TextButton(onPressed: () {}, child: const Text("Change Your profile image")),
                  ],
                ),
              ),

              const SizedBox(height: CustomSizes.spaceBtwItems / 2,),
              const Divider(),
              const SizedBox(height: CustomSizes.spaceBtwSections,),
              const CustomSectionHeading(title: "Profile information", ),
              const SizedBox(height: CustomSizes.spaceBtwSections,),

              ProfileMenu(
                title: Text("Rafael Nadal", style: Theme.of(context).textTheme.bodyMedium!.apply(color: dark ? Colors.white : Colors.black), overflow: TextOverflow.ellipsis,),
                property: Text("Name", style: Theme.of(context).textTheme.bodySmall!.apply(color: dark ? Colors.white : Colors.black), overflow: TextOverflow.ellipsis,),
                icon: Iconsax.arrow_right_34,
                onTap: () {},
              ),
              ProfileMenu(
                title: Text("Rafael_Nadal123", style: Theme.of(context).textTheme.bodyMedium!.apply(color: dark ? Colors.white : Colors.black), overflow: TextOverflow.ellipsis,),
                property: Text("Username", style: Theme.of(context).textTheme.bodySmall!.apply(color: dark ? Colors.white : Colors.black), overflow: TextOverflow.ellipsis,),
                icon: Iconsax.arrow_right_34,
                onTap: () {},
              ),

              const SizedBox(height: CustomSizes.spaceBtwItems / 2,),
              const Divider(),
              const SizedBox(height: CustomSizes.spaceBtwSections,),
              const CustomSectionHeading(title: "Personal information", ),
              const SizedBox(height: CustomSizes.spaceBtwSections,),
              ProfileMenu(
                title: Text("444678", style: Theme.of(context).textTheme.bodyMedium!.apply(color: dark ? Colors.white : Colors.black), overflow: TextOverflow.ellipsis,),
                property: Text("User ID", style: Theme.of(context).textTheme.bodySmall!.apply(color: dark ? Colors.white : Colors.black), overflow: TextOverflow.ellipsis,),
                icon: Iconsax.copy,
                onTap: () {},
              ),
              ProfileMenu(
                title: Text("RafaelNadal@gmail.com", style: Theme.of(context).textTheme.bodyMedium!.apply(color: dark ? Colors.white : Colors.black), overflow: TextOverflow.ellipsis,),
                property: Text("Email", style: Theme.of(context).textTheme.bodySmall!.apply(color: dark ? Colors.white : Colors.black), overflow: TextOverflow.ellipsis,),
                icon: Iconsax.arrow_right_34,
                onTap: () {},
              ),
              ProfileMenu(
                title: Text("+38592346578", style: Theme.of(context).textTheme.bodyMedium!.apply(color: dark ? Colors.white : Colors.black), overflow: TextOverflow.ellipsis,),
                property: Text("Phone number", style: Theme.of(context).textTheme.bodySmall!.apply(color: dark ? Colors.white : Colors.black), overflow: TextOverflow.ellipsis,),
                icon: Iconsax.arrow_right_34,
                onTap: () {},
              ),
              ProfileMenu(
                title: Text("01.01.1980l", style: Theme.of(context).textTheme.bodyMedium!.apply(color: dark ? Colors.white : Colors.black), overflow: TextOverflow.ellipsis,),
                property: Text("Date of Birth", style: Theme.of(context).textTheme.bodySmall!.apply(color: dark ? Colors.white : Colors.black), overflow: TextOverflow.ellipsis,),
                icon: Iconsax.arrow_right_34,
                onTap: () {},
              ),

              const SizedBox(height: CustomSizes.spaceBtwItems / 2,),
              const Divider(),
              const SizedBox(height: CustomSizes.spaceBtwItems,),

              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: () { }, child: const Text("Delete account", style: TextStyle(color: Colors.red)),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key, required this.title, required this.property, required this.icon, this.onTap,
  });

  final Widget title;
  final Widget property;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: CustomSizes.spaceBtwItems / 2),
        child: Row(
          children: [
            Expanded(flex: 3 ,child: property),
            Expanded(flex: 5 ,child: title),
            Expanded(child: Icon(icon, size: 16, color: dark ? Colors.white : Colors.black,))
          ],
        ),
      ),
    );
  }
}
