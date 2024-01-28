import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/custom_appbar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/brand_card.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_cards/card_gridview.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/all_brands/brand_products.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text("Popular brands"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              CustomGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (_, index) => BrandCard(showBorder: true, onTap: () => Get.to(() => const BrandProducts()),))
            ],
          ),
        ),
      ),
    );
  }
}
