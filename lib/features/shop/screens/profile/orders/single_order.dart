import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/common/widgets/shape_widgets/custom_curved_edges.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class SingleOrderCard extends StatelessWidget {
  const SingleOrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return CircularContainer(
      padding: const EdgeInsets.all(CustomSizes.md),
      showBorder: true,
      backgroundColor: dark ? CustomColor.dark : CustomColor.light,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Icon(Iconsax.ship),
              const SizedBox(
                width: CustomSizes.spaceBtwItems / 2,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Processing...",
                      style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: CustomColor.primary, fontWeightDelta: 1),
                    ),
                    Text("24.07.2024.",
                        style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.arrow_right_3,
                    size: CustomSizes.iconsm,
                  )),
            ],
          ),
          const SizedBox(
            height: CustomSizes.spaceBtwItems,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Icon(Iconsax.tag),
                    const SizedBox(
                      width: CustomSizes.spaceBtwItems / 2,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .apply(
                                color: CustomColor.primary,
                                fontWeightDelta: 1),
                          ),
                          Text("[IDIDID]",
                              style:
                              Theme.of(context).textTheme.titleLarge),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Icon(Iconsax.calendar),
                    const SizedBox(
                      width: CustomSizes.spaceBtwItems / 2,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shipping date",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .apply(
                                color: CustomColor.primary,
                                fontWeightDelta: 1),
                          ),
                          Text("24.07.2024.",
                              style:
                              Theme.of(context).textTheme.titleLarge),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
