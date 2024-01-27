import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/common/widgets/shape_widgets/custom_curved_edges.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({
    super.key, required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return CircularContainer(
      padding: const EdgeInsets.all(CustomSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? CustomColor.primary.withOpacity(0.7) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? CustomColor.darkGrey : CustomColor.grey,
      margin: const EdgeInsets.only(bottom: CustomSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress ? dark ? CustomColor.dark : CustomColor.light : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rafael Nadal",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headlineSmall!.apply(color: selectedAddress ? Colors.white : Colors.black),
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems / 2,),
              Text(
                "0987654321",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyLarge!.apply(color: selectedAddress ? Colors.white : Colors.black),
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems / 2,),
              Text(
                "Jarunska ulica 2, 10000 Zagreb",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyLarge!.apply(color: selectedAddress ? Colors.white : Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
