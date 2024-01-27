import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/brand_title_icon.dart';
import 'package:karlo_kalamiza_shop/common/widgets/rounded_image.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/widgets/product_title_text.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return Row(
      children: [
        RoundedImage(
          imageUrl: CustomImages.nikeCover,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(CustomSizes.sm),
          backgroundColor:
          dark ? CustomColor.darkGrey : CustomColor.lightGrey,
        ),
        const SizedBox(
          width: CustomSizes.spaceBtwItems,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithIcon(title: "Nike"),
              const Flexible(
                child: ProductTitleText(
                  title: "Black ike sport shoes",
                  maxLines: 1,
                ),
              ),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: "Color: ", style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "Green", style: Theme.of(context).textTheme.bodyLarge),
                        const WidgetSpan(child: SizedBox(width: CustomSizes.spaceBtwItems,)),
                        TextSpan(text: "Size: ", style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "EU 44", style: Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
