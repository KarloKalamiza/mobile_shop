import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/rounded_image.dart';
import 'package:karlo_kalamiza_shop/common/widgets/search_bar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/section_heading.dart';
import 'package:karlo_kalamiza_shop/common/widgets/shape_widgets/custom_curved_edges.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
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
                        textColor: CustomColor.light,
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
          const Padding(
            padding: EdgeInsets.all(CustomSizes.defaultSpace),
            child: PromoSlider(
              banners: [
                CustomImages.banner1,
                CustomImages.banner2,
                CustomImages.banner3
              ],
            ),
          ),
        ],
      )),
    );
  }
}
