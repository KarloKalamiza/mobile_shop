import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/circle_social_icon.dart';
import 'package:karlo_kalamiza_shop/common/widgets/divider_text.dart';
import 'package:karlo_kalamiza_shop/features/authentication/screens/signUp/verify_email.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(CustomSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(
                CustomTexts.letsCreateAccount,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSections,
              ),

              // signup form
              const SignUpForm(),
              const SizedBox(
                height: CustomSizes.spaceBtwSections,
              ),

              // sign up button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text("Create account"),),
              ),

              const SizedBox(
                height: CustomSizes.spaceBtwSections,
              ),

              // divider
              const DividerWithText(
                text: CustomTexts.signInWith,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSections,
              ),

              // socials
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleSocialIcon(social: CustomImages.google, borderColor: CustomColor.grey),
                  CircleSocialIcon(social: CustomImages.facebook, borderColor: CustomColor.grey),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


