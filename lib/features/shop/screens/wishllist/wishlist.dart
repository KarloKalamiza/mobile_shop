import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/custom_appbar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/circular_icon.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_cards/card_gridview.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_cards/productcard_vertical.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/home/home.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: CustomAppBar(
          title: Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            CustomCircularIcon(icon: Iconsax.add,
              onPressed: () => Get.to(const HomeScreen()),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              CustomGridLayout(itemCount: 10, itemBuilder: (_, index) => const ProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}