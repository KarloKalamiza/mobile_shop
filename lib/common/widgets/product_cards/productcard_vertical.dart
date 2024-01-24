import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/common/widgets/circular_icon.dart';
import 'package:karlo_kalamiza_shop/common/widgets/shape_widgets/custom_curved_edges.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';
import 'package:karlo_kalamiza_shop/utils/theme/custom_themes/shadow_style.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [ShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(CustomSizes.productImageRadius),
            color: dark ? CustomColor.darkGrey : CustomColor.white),
        child: Column(
          children: [
            // Thumbnail
            CircularContainer(
              height: 180,
              padding: const EdgeInsets.all(CustomSizes.sm),
              backgroundColor: dark ? CustomColor.dark : CustomColor.light,
              child: Stack(
                children: [
                  //Thumbnail image
                  const Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Image(image: AssetImage(CustomImages.banner1))),

                  //Sale tag
                  Positioned(
                    top: 12,
                    child: CircularContainer(
                      radius: CustomSizes.md,
                      backgroundColor: CustomColor.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: CustomSizes.sm, vertical: CustomSizes.xs),
                      child: Text("75%",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: Colors.black)),
                    ),
                  ),

                  //heart button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: CustomCircularIcon(icon: Iconsax.heart5)),
                ],
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwItems / 2),
            // Details
            Padding(
              padding: const EdgeInsets.only(left: CustomSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sport stuff",
                    style: Theme.of(context).textTheme.labelLarge,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: CustomSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        "Nike",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .apply(color: Colors.grey),
                      ),
                      const SizedBox(width: CustomSizes.spaceBtwItems / 2,),
                      const Icon(Iconsax.verify5, color: CustomColor.primary, size: CustomSizes.iconxs,),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$35',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: CustomColor.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(CustomSizes.cardRadiusMd),
                            bottomRight: Radius.circular(CustomSizes.productImageRadius)
                          )
                        ),
                        child: const SizedBox(
                          width: CustomSizes.iconlg * 1.2,
                          height: CustomSizes.iconlg * 1.2,
                          child: Center(child: Icon(Iconsax.add, color: CustomColor.white,)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
