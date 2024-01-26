import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/enums.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

import 'brandtitle_text.dart';
import 'shape_widgets/custom_curved_edges.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: CircularContainer(
        padding: const EdgeInsets.all(CustomSizes.sm),
        backgroundColor: Colors.transparent,
        showBorder: showBorder,
        child: Row(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(
                  CustomSizes.sm),
              decoration: BoxDecoration(
                  color: dark
                      ? CustomColor.black
                      : CustomColor.white,
                  borderRadius:
                  BorderRadius.circular(100)),
              child: Expanded(
                child: Image(
                  image: const AssetImage(
                      CustomImages.banner1),
                  color: dark
                      ? CustomColor.light
                      : CustomColor.dark,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: CustomSizes.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const BrandTitleText(
                    title: "Nike",
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    "256 products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
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
