import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/common/widgets/circular_icon.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class BottomNavigationProduct extends StatelessWidget {
  const BottomNavigationProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: CustomSizes.defaultSpace,
          vertical: CustomSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? CustomColor.dark : CustomColor.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(CustomSizes.cardRadiusLg),
          bottomRight: Radius.circular(CustomSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Row(
            children: [
              const CustomCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: CustomColor.darkGrey,
                color: CustomColor.white,
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: CustomSizes.spaceBtwSections / 2,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: CustomSizes.spaceBtwSections / 2,
              ),
              const CustomCircularIcon(
                icon: Iconsax.add,
                backgroundColor: CustomColor.black,
                color: CustomColor.white,
                height: 40,
                width: 40,
              ),
            ],
          ),

          ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.all(CustomSizes.md),
                  side: const BorderSide(color: Colors.black)
              ),
              child: const Text("Add to Cart"))
        ],
      ),
    );
  }
}
