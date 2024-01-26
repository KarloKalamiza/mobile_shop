import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_cards/card_gridview.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_cards/productcard_vertical.dart';
import 'package:karlo_kalamiza_shop/common/widgets/search_bar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/section_heading.dart';
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
                CustomSearchBar(
                  title: Text(
                    "Search",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                const SizedBox(
                  height: CustomSizes.spaceBtwSections,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: CustomSizes.defaultSpace),
                  child: Column(
                    children: [
                      CustomSectionHeading(
                        title: "Popular categories",
                      ),
                      SizedBox(
                        height: CustomSizes.spaceBtwItems,
                      ),
                      HomeCategories(),
                    ],
                  ),
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
                    const CustomSectionHeading(
                        title: "Popular products"),
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
