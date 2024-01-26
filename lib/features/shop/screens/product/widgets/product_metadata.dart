import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/shape_widgets/custom_curved_edges.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/widgets/product_price_text.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

import 'product_title_text.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price and Sale Price
        Row(
          children: [
            CircularContainer(
              radius: CustomSizes.sm,
              backgroundColor: CustomColor.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: CustomSizes.sm,
                vertical: CustomSizes.xs
              ),
              child: Text("20%", style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),),
            ),
            const SizedBox(width: CustomSizes.spaceBtwItems,),
            const ProductPriceText(price: "250", lineThrough: true,),
            const SizedBox(width: CustomSizes.spaceBtwItems,),
            const ProductPriceText(price: "175", lineThrough: false, isLarge: true,),
          ],
        ),

        // Title
        const SizedBox(height: CustomSizes.spaceBtwItems,),
        const ProductTitleText(title: 'Blue Nike sport shoes',),
        const SizedBox(height: CustomSizes.spaceBtwItems,),

        // Stack status
        Row(
          children: [
            const ProductTitleText(title: 'Status',),
            const SizedBox(width: CustomSizes.spaceBtwItems,),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwSections,),
      ],
    );
  }
}
