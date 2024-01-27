import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:karlo_kalamiza_shop/bottom_navigation.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/custom_appbar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/shape_widgets/custom_curved_edges.dart';
import 'package:karlo_kalamiza_shop/common/widgets/succes_screen.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/cart/cart_items.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/pricing/billing_address_section.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/pricing/billing_payment_section.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/pricing/billing_amount_section.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

import '../widgets/coupon_code.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return Scaffold(
      appBar: const CustomAppBar(
        title: Text("Checkout"),
        showBackArrow: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(CustomSizes.sm),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
              image: CustomImages.success,
              title: "Payment was Successful",
              subtitle: "Your order will be shipped to Your home soon",
              onPressed: () => Get.offAll(() => const NavigationMenu()) )),
          child: const Text("Checkout \$ 250"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              const CartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSections,
              ),
              const CouponTextField(),
              const SizedBox(
                height: CustomSizes.spaceBtwSections,
              ),
              CircularContainer(
                padding: const EdgeInsets.all(CustomSizes.defaultSpace),
                showBorder: true,
                backgroundColor: dark ? CustomColor.black : CustomColor.white,
                child: const Column(
                  children: [
                    BillingAmountSection(),
                    SizedBox(
                      height: CustomSizes.spaceBtwItems,
                    ),
                    Divider(),
                    SizedBox(
                      height: CustomSizes.spaceBtwItems,
                    ),
                    BillingPaymentSection(),
                    SizedBox(
                      height: CustomSizes.spaceBtwItems,
                    ),
                    BillingAddressSection(),
                    SizedBox(
                      height: CustomSizes.spaceBtwItems,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
