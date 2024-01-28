import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/custom_appbar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_cards/productcard_horizontal.dart';
import 'package:karlo_kalamiza_shop/common/widgets/rounded_image.dart';
import 'package:karlo_kalamiza_shop/common/widgets/section_heading.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text("Sport"),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(CustomSizes.defaultSpace),
        child: Column(
          children: [
            const RoundedImage(
              imageUrl: CustomImages.banner1,
              width: double.infinity,
              applyImageRadius: true,
            ),
            const SizedBox(
              height: CustomSizes.spaceBtwSections,
            ),
            Column(
              children: [
                CustomSectionHeading(
                  title: "Sport equipment",
                  buttonVisible: true,
                  buttonText: "Show more",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: CustomSizes.spaceBtwItems / 2,
                ),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const ProductCardHorizontal(),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: CustomSizes.spaceBtwItems,
                          ),
                      itemCount: 4),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
