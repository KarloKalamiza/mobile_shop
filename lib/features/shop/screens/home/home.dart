import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/search_bar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/section_heading.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'widgets/categories.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_header.dart';

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
                  padding:
                      EdgeInsets.only(left: CustomSizes.defaultSpace),
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
          )
        ],
      )),
    );
  }
}