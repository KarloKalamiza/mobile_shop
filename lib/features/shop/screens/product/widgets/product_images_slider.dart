import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/custom_appbar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/circular_icon.dart';
import 'package:karlo_kalamiza_shop/common/widgets/curved_widgets/curved_egde_container.dart';
import 'package:karlo_kalamiza_shop/common/widgets/rounded_image.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class ProductImagesSlider extends StatelessWidget {
  const ProductImagesSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return CurvedEdgeContainer(
      child: Container(
        color: dark ? CustomColor.dark : CustomColor.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(CustomSizes.productImageRadius * 2),
                child: Center(child: Image(image: AssetImage(CustomImages.nikeCover))),
              ),
            ),

            // images slider
            Positioned(
              right: 0,
              bottom: 30,
              left: CustomSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(itemBuilder: (_, index) => RoundedImage(
                    width: 80,
                    backgroundColor: dark ? Colors.black : Colors.white,
                    border: Border.all(color: CustomColor.primary),
                    padding: const EdgeInsets.all(CustomSizes.sm),
                    imageUrl: CustomImages.nike1),
                  separatorBuilder: (_, __) => const SizedBox(width: CustomSizes.spaceBtwItems,),
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                ),
              ),
            ),

            const CustomAppBar(
              showBackArrow: true,
              actions: [
                CustomCircularIcon(icon: Iconsax.heart, color: Colors.red,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}