import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/common/widgets/brandtitle_text.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/enums.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

class BrandTitleWithIcon extends StatelessWidget {
  const BrandTitleWithIcon({
    super.key,
    required this.title,
    this.maxLines = 2,
    this.textColor,
    this.iconColor = CustomColor.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: BrandTitleText(
            title: title,
            maxLines: maxLines,
            textAlign: textAlign,
            color: textColor,
            brandTextSize: brandTextSizes,
          ),
        ),
        const SizedBox(
          width: CustomSizes.spaceBtwItems / 2,
        ),
        const Icon(
          Iconsax.verify5,
          color: CustomColor.primary,
          size: CustomSizes.iconxs,
        ),
      ],
    );
  }
}