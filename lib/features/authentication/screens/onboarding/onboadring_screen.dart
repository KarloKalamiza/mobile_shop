import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karlo_kalamiza_shop/features/authentication/controllers/onboarding_controller.dart';
import 'package:karlo_kalamiza_shop/features/authentication/screens/onboarding/widgets/onboarding_skip_button.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/text_strings.dart';
import 'widgets/dot_bottom_navigation.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: CustomImages.onboarding1,
                title: CustomTexts.onBoardingTitle1,
                subtitle: CustomTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: CustomImages.onboarding2,
                title: CustomTexts.onBoardingTitle2,
                subtitle: CustomTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: CustomImages.onboarding3,
                title: CustomTexts.onBoardingTitle3,
                subtitle: CustomTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // skip button
          const OnBoardingSkip(),

          // dot navigation smoothpageindicator
          const BottomDotNavigation(),

          // circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

