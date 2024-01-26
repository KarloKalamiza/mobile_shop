import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_cards/card_gridview.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_cards/productcard_vertical.dart';
import 'package:karlo_kalamiza_shop/common/widgets/section_heading.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

import 'brand_showcase.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(CustomSizes.defaultSpace),
            child: Column(
              children: [
                // Brands
                const BrandShowcase(images: [
                  CustomImages.banner1,
                  CustomImages.banner2,
                  CustomImages.banner3,
                ],),
                const BrandShowcase(images: [
                  CustomImages.banner1,
                  CustomImages.banner2,
                  CustomImages.banner3,
                ],),

                // Products
                CustomSectionHeading(title: "You might also like", buttonVisible: true, onPressed: () {},),
                const SizedBox(height: CustomSizes.spaceBtwItems,),
                CustomGridLayout(itemCount: 14, itemBuilder: (_, index) => const ProductCardVertical()),
              ],
            ),
          ),
        ]);
  }
}