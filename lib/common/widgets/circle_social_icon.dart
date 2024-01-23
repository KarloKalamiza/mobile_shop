import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

class CircleSocialIcon extends StatelessWidget {
  const CircleSocialIcon({
    super.key, required this.social, required this.borderColor,
  });
  final String social;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        onPressed: () {},
        icon: Image(
            width: CustomSizes.iconmd,
            height: CustomSizes.iconmd,
            image: AssetImage(social)),
      ),
    );
  }
}