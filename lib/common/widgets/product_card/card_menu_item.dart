import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/cart/cart_screen.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';

class ShoppingCounterIcon extends StatelessWidget {
  const ShoppingCounterIcon({
    super.key, this.iconColor,
  });

  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () => Get.to(() => const CartScreen()),
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: CustomColor.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
                  "2",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: CustomColor.white, fontSizeFactor: 0.8),
                )),
          ),
        )
      ],
    );
  }
}