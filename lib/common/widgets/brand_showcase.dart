import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';
import '../../utils/constants/colors.dart';
import 'brand_card.dart';
import 'shape_widgets/custom_curved_edges.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return CircularContainer(
      padding: const EdgeInsets.all(CustomSizes.md),
      showBorder: true,
      borderColor: CustomColor.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: CustomSizes.spaceBtwSections),
      child: Column(
        children: [
          const BrandCard(showBorder: false),
          Row(
              children: images.map((image) => brandTopProductImageLayout(image, context)).toList()
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageLayout(String image, context) {
  final dark = CustomHelper.isDarkMode(context);

  return Expanded(
    child: CircularContainer(
      height: 100,
      backgroundColor: dark ? CustomColor.darkGrey :  CustomColor.light,
      margin: const EdgeInsets.only(right: CustomSizes.md),
      padding: const EdgeInsets.all(CustomSizes.md),
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.contain,
      ),
    ),
  );
}