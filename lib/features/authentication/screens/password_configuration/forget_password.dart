import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Headings
              Text(
                CustomTexts.forgetPassword,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwItems,
              ),
              Text(
                CustomTexts.forgetMessage,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSections * 2,
              ),

              // TextField
              TextFormField(
                decoration: const InputDecoration(
                    labelText: CustomTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right)),
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSections,
              ),

              // Submit button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => const ResetPassword()),
                      child: const Text(CustomTexts.submit)))
            ],
          ),
        ),
      ),
    );
  }
}
