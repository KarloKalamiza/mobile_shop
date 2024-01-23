import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/features/authentication/controllers/onboarding_controller.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/device/custom_device_uutils.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BottomDotNavigation extends StatelessWidget {
  const BottomDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
        bottom: CustomDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: CustomSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? CustomColor.light : CustomColor.dark, dotHeight: 6),
        ));
  }
}