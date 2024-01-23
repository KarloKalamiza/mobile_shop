import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

class CustomSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: CustomSizes.appbarHeight,
    left: CustomSizes.defaultSpace,
    right: CustomSizes.defaultSpace,
    bottom: CustomSizes.defaultSpace,
  );
}