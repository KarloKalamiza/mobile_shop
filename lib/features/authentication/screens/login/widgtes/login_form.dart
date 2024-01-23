import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/bottom_navigation.dart';
import 'package:karlo_kalamiza_shop/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:karlo_kalamiza_shop/features/authentication/screens/signUp/signup.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding:
          const EdgeInsets.symmetric(vertical: CustomSizes.spaceBtwSections),
      child: Column(
        children: <Widget>[
          // Email text field
          const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  label: Text(CustomTexts.email))),
          const SizedBox(
            height: CustomSizes.spaceBetweenFields,
          ),
          // Password text field
          const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  label: Text(CustomTexts.password),
                  suffixIcon: Icon(Iconsax.eye_slash))),
          const SizedBox(
            height: CustomSizes.spaceBetweenFields / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(CustomTexts.rememberMe)
                ],
              ),

              // Forget password
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(CustomTexts.forgetPassword))
            ],
          ),
          const SizedBox(
            height: CustomSizes.spaceBtwSections,
          ),

          // Login button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const NavigationMenu()), child: const Text(CustomTexts.login))),
          const SizedBox(
            height: CustomSizes.spaceBtwItems,
          ),
          //SignUp button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignUpScreen()), child: const Text(CustomTexts.signUp))),
        ],
      ),
    ));
  }
}
