import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/custom_appbar.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'order_listitems.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Text("Orders"),
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(CustomSizes.defaultSpace),
        child: OrderListItems(),
      ),
    );
  }
}
