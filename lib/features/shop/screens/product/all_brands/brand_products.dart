import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/custom_appbar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/brand_card.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/sortable/sortable_products.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Text("Brand products"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              BrandCard(showBorder: true),
              SizedBox(height: CustomSizes.spaceBtwSections,),
              SortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
