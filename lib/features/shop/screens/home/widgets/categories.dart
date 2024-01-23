import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/image_with_text_bottom.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return const VerticalImageText(image: CustomImages.google, text: 'Shoes', textColor: CustomColor.light,);
          }),
    );
  }
}