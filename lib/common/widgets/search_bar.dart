import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/device/custom_device_uutils.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.title,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final Widget title;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace),
      child: Container(
        width: CustomDeviceUtils.getScreenWidth(),
        padding: const EdgeInsets.all(CustomSizes.md),
        decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? CustomColor.dark
                    : CustomColor.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(CustomSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: CustomColor.grey) : null),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.blueGrey,
            ),
            const SizedBox(
              width: CustomSizes.spaceBtwSections,
            ),
            title
          ],
        ),
      ),
    );
  }
}
