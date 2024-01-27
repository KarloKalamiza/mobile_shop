import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import '../widgets/product_price_text.dart';
import 'add_remove_buttons.dart';
import 'cart_item.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: CustomSizes.spaceBtwItems,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const CartItem(),
          if (showAddRemoveButtons)
            const SizedBox(
              height: CustomSizes.spaceBtwItems,
            ),
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    QuantityItemWithAddAndRemoveButton(),
                  ],
                ),
                Positioned(right: 10, child: ProductPriceText(price: "\$25")),
              ],
            )
        ],
      ),
    );
  }
}
