import 'package:flutter/cupertino.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';

class ShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: CustomColor.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
      color: CustomColor.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)
  );
}