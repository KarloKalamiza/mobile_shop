import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/features/authentication/controllers/onboarding_controller.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/device/custom_device_uutils.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
        bottom: CustomDeviceUtils.getBottomNavigationBarHeight(),
        right: CustomSizes.defaultSpace,
        child: ElevatedButton(
          onPressed: () => controller.nextPage(),
          style: ElevatedButton.styleFrom( shape: const CircleBorder(), backgroundColor: dark ? CustomColor.primary : CustomColor.black ),
          child: const Icon(Iconsax.arrow_right_3),

        ));
  }
}