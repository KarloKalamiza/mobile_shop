import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Subtotal", style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$250", style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping fee", style: Theme.of(context).textTheme.labelLarge,),
            Text("free", style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax fee", style: Theme.of(context).textTheme.labelLarge,),
            Text("free", style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems / 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order total", style: Theme.of(context).textTheme.titleMedium,),
            Text("\$ 250", style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
      ],
    );
  }
}
