import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/common/widgets/section_heading.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomSectionHeading(title: "Shipping address", buttonText: "Change", buttonVisible: true,),
        const SizedBox(height: CustomSizes.spaceBtwItems / 2,),
        Text("Rafael Nadal", style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: CustomSizes.spaceBtwItems,),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16,),
            const SizedBox(width: CustomSizes.spaceBtwItems,),
            Expanded(child: Text("0987654321", style: Theme.of(context).textTheme.labelLarge)),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems / 2,),
        Row(
          children: [
            const Icon(Iconsax.building_3, color: Colors.grey, size: 16,),
            const SizedBox(width: CustomSizes.spaceBtwItems,),
            Expanded(child: Text("Jarunska ulica 2", style: Theme.of(context).textTheme.labelLarge)),
          ],
        ),
      ],
    );
  }
}
