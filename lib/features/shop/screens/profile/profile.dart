import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/custom_appbar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/section_heading.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/home/widgets/home_header.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/profile/addresses/addresses_screen.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/profile/widgets/settings_menu.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

import 'widgets/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            PrimaryHeaderContainer(child: Column(
              children: [
                CustomAppBar(title: Text("Account", style: Theme.of(context).textTheme.headlineMedium!.apply(color: CustomColor.white),),),
                const ProfileHeader(),
                const SizedBox(height: CustomSizes.spaceBtwSections,),
              ],
            )),

            // body
            Padding(padding: const EdgeInsets.all(CustomSizes.defaultSpace), child: Column(
              children: [
                const CustomSectionHeading(title: "Account Settings"),
                const SizedBox(height: CustomSizes.spaceBtwItems,),
                SettingsMenuTile(icon: Iconsax.safe_home, title: "My addresses", subtitle: "Set delivery address", onTap: () => Get.to(() => const AddressesScreen()),),
                SettingsMenuTile(icon: Iconsax.shopping_cart, title: "My cart", subtitle: "Add or remove products", onTap: () {},),
                SettingsMenuTile(icon: Iconsax.bag_tick, title: "My orders", subtitle: "In adn completed progress orders", onTap: (){},),
                SettingsMenuTile(icon: Iconsax.bank, title: "Bank Account", subtitle: "Withdraw balance to registered bank account", onTap: (){},),
                SettingsMenuTile(icon: Iconsax.discount_shape, title: "my Coupons", subtitle: "All discounted coupons", onTap: (){},),
                SettingsMenuTile(icon: Iconsax.notification, title: "Notifications", subtitle: "All received notifications", onTap: (){},),
                SettingsMenuTile(icon: Iconsax.security_card, title: "Account Privacy", subtitle: "Account privacy settings", onTap: (){},),

                const SizedBox(height: CustomSizes.spaceBtwSections,),

                const CustomSectionHeading(title: "App Setting"),
                const SizedBox(height: CustomSizes.spaceBtwSections,),

                SettingsMenuTile(icon: Iconsax.document_upload, title: "Load data", subtitle: "Upload data to Your cloud platform", onTap: (){},),
                SettingsMenuTile(icon: Iconsax.location, title: "Geolocation", subtitle: "Get recommendations based on location", onTap: (){}, trailing: Switch(value: true, onChanged: (value) {},),),
                SettingsMenuTile(icon: Iconsax.security_user, title: "Safe mode", subtitle: "Search result is safe for all ages.", onTap: (){}, trailing: Switch(value: false, onChanged: (value) {},),),
                SettingsMenuTile(icon: Iconsax.image, title: "HM image quality", subtitle: "Get image quality to be seen", onTap: (){}, trailing: Switch(value: false, onChanged: (value) {},),),
                const SizedBox(height: CustomSizes.spaceBtwSections,),
                SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){}, child: const Text("Logout"))),
                const SizedBox(height: CustomSizes.spaceBtwSections,),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}