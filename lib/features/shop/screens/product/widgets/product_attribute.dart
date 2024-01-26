import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/choice_chip.dart';
import 'package:karlo_kalamiza_shop/common/widgets/section_heading.dart';
import 'package:karlo_kalamiza_shop/common/widgets/shape_widgets/custom_curved_edges.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/widgets/product_price_text.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/widgets/product_title_text.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return Column(
      children: [
        CircularContainer(
          padding: const EdgeInsets.all(CustomSizes.md),
          backgroundColor: dark ? CustomColor.darkGrey : CustomColor.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const CustomSectionHeading(title: "Variations"),
                  const SizedBox(
                    width: CustomSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: "Price",
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: CustomSizes.spaceBtwItems / 2,
                          ),
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: CustomSizes.spaceBtwItems / 2,
                          ),
                          const ProductPriceText(price: "\$15"),
                        ],
                      ),
                      const SizedBox(
                        height: CustomSizes.spaceBtwItems / 2,
                      ),
                      Row(
                        children: [
                          const ProductTitleText(
                            title: "Stock",
                            smallSize: true,
                          ),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const ProductTitleText(
                title:
                    "This is the Description of the product and it go up to max 4 lines.",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: CustomSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSectionHeading(title: "Colors"),
            const SizedBox(
              height: CustomSizes.spaceBtwSections,
            ),
            Wrap(
              spacing: 12,
              children: [
                CustomChoiceChip(text: 'Green', selected: true, onSelected: (value) {},),
                CustomChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
                CustomChoiceChip(text: 'Red', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSectionHeading(title: "Sizes"),
            const SizedBox(
              height: CustomSizes.spaceBtwSections,
            ),
            Wrap(
              spacing: 12,
              children: [
                CustomChoiceChip(text: 'EU 40', selected: true, onSelected: (value) {},),
                CustomChoiceChip(text: 'EU 44', selected: false, onSelected: (value) {}),
                CustomChoiceChip(text: 'EU 46', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
