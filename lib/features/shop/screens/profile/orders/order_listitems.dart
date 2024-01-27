import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/profile/orders/single_order.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 6,
      itemBuilder: (_, index) => const SingleOrderCard(),
      separatorBuilder: (_, __) => const SizedBox(
        height: CustomSizes.spaceBtwItems,
      ),
    );
  }
}