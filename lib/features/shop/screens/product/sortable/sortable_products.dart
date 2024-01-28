import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_cards/card_gridview.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_cards/productcard_vertical.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
            decoration:
            const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            items: [
              "Name",
              "Higher price",
              "Lower price",
              "Newest",
              "Popularity"
            ].map((option) => DropdownMenuItem(value: option, child: Text(option)))
                .toList(),
            onChanged: (value) {}),
        const SizedBox(height: CustomSizes.spaceBtwSections,),
        CustomGridLayout(itemCount: 24, itemBuilder: (_, index) => const ProductCardVertical())
      ],
    );
  }
}