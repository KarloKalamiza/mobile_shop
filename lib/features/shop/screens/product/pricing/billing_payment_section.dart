import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/section_heading.dart';
import 'package:karlo_kalamiza_shop/common/widgets/shape_widgets/custom_curved_edges.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return Column(
      children: [
        const CustomSectionHeading(title: "Payment method", buttonText: "Change", buttonVisible: true,),
        const SizedBox(height: CustomSizes.spaceBtwItems,),
        Row(
          children: [
            // paypal rounded image
            CircularContainer(
              width: 60,
              height: 35,
              padding: const EdgeInsets.all(CustomSizes.sm),
              backgroundColor: dark ? CustomColor.light : Colors.white,
              child: const Image(image: AssetImage(CustomImages.google), fit: BoxFit.contain,),
            ),
            const SizedBox(width: CustomSizes.spaceBtwItems / 2,),
            // paypal text
            Text("PayPal", style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
