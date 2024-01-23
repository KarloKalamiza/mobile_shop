import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/features/authentication/screens/login/login_screen.dart';
import 'package:karlo_kalamiza_shop/common/widgets/succes_screen.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:karlo_kalamiza_shop/utils/constants/text_strings.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              // image
              Image(
                image: const AssetImage(CustomImages.confirmLetter),
                width: CustomHelper.screenWidth() * 0.6,
              ),
              const SizedBox(height: CustomSizes.spaceBtwSections,),

              // title and text
              Text(CustomTexts.verifyEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: CustomSizes.spaceBtwItems,),
              Text(CustomTexts.support, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,),
              const SizedBox(height: CustomSizes.spaceBtwItems,),
              Text(CustomTexts.verifySubtitle, style: Theme.of(context).textTheme.labelSmall, textAlign: TextAlign.center,),

              const SizedBox(height: CustomSizes.spaceBtwSections,),

              //buttons
              SizedBox(width: double.infinity, child: ElevatedButton(
                onPressed: () => Get.to(() => SuccessScreen(
                  image: CustomImages.success,
                  title: CustomTexts.yourEmailVerified,
                  subtitle: CustomTexts.successSubtitle,
                  onPressed: () => Get.offAll(() => const LoginScreen()),
                )),
                child: const Text(CustomTexts.verifyContinue),
              ),),
              const SizedBox(height: CustomSizes.spaceBtwItems,),
              SizedBox(width: double.infinity, child: TextButton(
                onPressed: (){},
                child: const Text(CustomTexts.resendEmail),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
