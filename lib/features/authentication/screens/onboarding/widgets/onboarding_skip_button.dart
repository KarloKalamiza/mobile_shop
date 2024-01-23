import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/features/authentication/controllers/onboarding_controller.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/device/custom_device_uutils.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
        top: CustomDeviceUtils.getAppBarHeight(),
        right: CustomSizes.defaultSpace,
        child: TextButton(
          onPressed: () => controller.skipPage(),
          child: const Text("Skip"),
        ));
  }
}