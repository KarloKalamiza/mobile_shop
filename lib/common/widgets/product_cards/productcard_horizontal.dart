import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/common/widgets/brand_title_icon.dart';
import 'package:karlo_kalamiza_shop/common/widgets/rounded_image.dart';
import 'package:karlo_kalamiza_shop/common/widgets/shape_widgets/custom_curved_edges.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/product_details.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/widgets/product_price_text.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/widgets/product_title_text.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

import '../circular_icon.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetails()),
      child: Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(CustomSizes.productImageRadius),
            color: dark ? CustomColor.darkGrey : CustomColor.lightContainer),
        child: Row(
          children: [
            CircularContainer(
              height: 120,
              padding: const EdgeInsets.all(CustomSizes.sm),
              backgroundColor: dark ? CustomColor.dark : CustomColor.light,
              child: Stack(
                children: [
                  const SizedBox(
                      height: 120,
                      width: 120,
                      child: RoundedImage(
                        imageUrl: CustomImages.nike1,
                        applyImageRadius: true,
                      )),
                  Positioned(
                    top: 12,
                      child: CircularContainer(
                        radius: CustomSizes.sm,
                        backgroundColor: CustomColor.secondary.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: CustomSizes.sm,
                          vertical: CustomSizes.xs
                        ),
                        child: Text("25%", style: Theme.of(context).textTheme.labelLarge!.apply(color: CustomColor.black),),
                      ),
                  ),
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: CustomCircularIcon(icon: Iconsax.heart5)),

                ],
              ),
            ),

            SizedBox(
              width: 170,
              child: Padding(
                padding: const EdgeInsets.only(top: CustomSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductTitleText(title: "Green Nike sport shoes", smallSize: true,),
                        SizedBox(height: CustomSizes.spaceBtwItems / 2,),
                        BrandTitleWithIcon(title: "Nike"),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(child: ProductPriceText(price: "2500")),
                        Container(
                          decoration: const BoxDecoration(
                              color: CustomColor.dark,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(CustomSizes.cardRadiusMd),
                                  bottomRight:
                                  Radius.circular(CustomSizes.productImageRadius))),
                          child: const SizedBox(
                            width: CustomSizes.iconlg * 1.2,
                            height: CustomSizes.iconlg * 1.2,
                            child: Center(
                                child: Icon(
                                  Iconsax.add,
                                  color: CustomColor.white,
                                )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
