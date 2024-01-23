import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.text,
    required this.textColor,
    this.backgroundColor = Colors.white,
    this.onTap,
  });

  final String image, text;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: CustomSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(CustomSizes.md),
              decoration: BoxDecoration(
                  color: backgroundColor ?? (dark ? CustomColor.black : CustomColor.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: dark ? CustomColor.light : CustomColor.dark,
              ),
            ),
            const SizedBox(
              height: CustomSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}