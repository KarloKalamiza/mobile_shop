import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/constants/text_strings.dart';
import 'privacypolicy_termsofuse.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: CustomTexts.firstname,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: CustomSizes.spaceBetweenFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: CustomTexts.lastname,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: CustomSizes.spaceBetweenFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: CustomTexts.username,
              prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: CustomSizes.spaceBetweenFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: CustomTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: CustomSizes.spaceBetweenFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: CustomTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: CustomSizes.spaceBetweenFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: CustomTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.password_check)),
        ),
        const SizedBox(
          height: CustomSizes.spaceBtwItems,
        ),
        const PrivacyPolicyAndTermsofUse()
      ],
    ));
  }
}