import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/common/widgets/circular_icon.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class QuantityItemWithAddAndRemoveButton extends StatelessWidget {
  const QuantityItemWithAddAndRemoveButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomCircularIcon(
          height: 32,
          width: 32,
          size: CustomSizes.md,
          icon: Iconsax.minus,
          color: dark ? Colors.white : Colors.black,
          backgroundColor: dark ? CustomColor.darkGrey : CustomColor.light,
        ),
        const SizedBox(width: CustomSizes.spaceBtwItems,),
        Text("2", style: Theme.of(context).textTheme.bodySmall,),
        const SizedBox(width: CustomSizes.spaceBtwItems,),
        const CustomCircularIcon(
          height: 32,
          width: 32,
          size: CustomSizes.md,
          icon: Iconsax.add,
          color: Colors.white,
          backgroundColor: CustomColor.primary,
        ),
      ],
    );
  }
}