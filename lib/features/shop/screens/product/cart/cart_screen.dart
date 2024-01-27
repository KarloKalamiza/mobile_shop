import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/custom_appbar.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/widgets/product_price_text.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

import 'add_remove_buttons.dart';
import 'cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const CustomAppBar(
        title: Text("Cart"),
        showBackArrow: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(CustomSizes.sm),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Checkout \$ 250"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (_, __) => const SizedBox(
              height: CustomSizes.spaceBtwItems,
            ),
            itemCount: 4,
            itemBuilder: (_, index) => const Column(
              children: [
                CartItem(),
                SizedBox(height: CustomSizes.spaceBtwItems,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 70,),
                        QuantityItemWithAddAndRemoveButton(),
                      ],
                    ),
                    Positioned(
                        right: 10,
                        child: ProductPriceText(price: "\$25")),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}