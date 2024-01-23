import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/styles/spacing_styles.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/constants/text_strings.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CustomSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: CustomHelper.screenWidth() * 0.6,
              ),
              const SizedBox(height: CustomSizes.spaceBtwSections,),

              // title and text
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: CustomSizes.spaceBtwItems,),
              Text(subtitle, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,),
              const SizedBox(height: CustomSizes.spaceBtwSections,),

              SizedBox(width: double.infinity, child: ElevatedButton(
                onPressed: onPressed,
                child: const Text(CustomTexts.login),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
