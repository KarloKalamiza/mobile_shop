import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/custom_appbar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_card/card_menu_item.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Excellent day for shopping!",
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: CustomColor.grey),
          ),
          Text(
            "Rafael Nadal",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: CustomColor.white),
          ),
        ],
      ),
      actions: const [
        ShoppingCounterIcon(
          iconColor: CustomColor.white,
        )
      ],
    );
  }
}
