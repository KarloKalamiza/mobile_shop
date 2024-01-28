import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_cards/card_gridview.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_cards/productcard_vertical.dart';
import 'package:karlo_kalamiza_shop/common/widgets/search_bar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/section_heading.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/all_products/all_products.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'widgets/categories.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_header.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          PrimaryHeaderContainer(
            child: Column(
              children: [
                const HomeAppBar(),
                const SizedBox(
                  height: CustomSizes.spaceBtwSections,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace),
                  child: CustomSearchBar(
                    title: Text(
                      "Search",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                const SizedBox(height: CustomSizes.spaceBtwItems,),
                const Padding(
                  padding: EdgeInsets.only(left: CustomSizes.defaultSpace),
                  child: Column(
                    children: [
                      SizedBox(
                        height: CustomSizes.spaceBtwItems,
                      ),
                      HomeCategories(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: CustomSizes.spaceBtwSections,
                )
              ],
            ),
          ),

          // banner carousel view
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(CustomSizes.defaultSpace),
                child: Column(
                  children: [
                    const PromoSlider(
                      banners: [
                        CustomImages.banner1,
                        CustomImages.banner2,
                        CustomImages.banner3
                      ],
                    ),
                    const SizedBox(
                      height: CustomSizes.spaceBtwItems,
                    ),
                    CustomSectionHeading(
                      title: "Popular products",
                      buttonVisible: true,
                      buttonText: "View All",
                      onPressed: () => Get.to(() => const AllProducts()),
                    ),
                    const SizedBox(
                      height: CustomSizes.spaceBtwItems,
                    ),
                    CustomGridLayout(
                      itemCount: 8,
                      itemBuilder: (_, index) => const ProductCardVertical(),
                    ),
                  ],
                ),
              ),
              // product cards
            ],
          ),
        ],
      )),
    );
  }
}
