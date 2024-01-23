import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/constants/text_strings.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class PrivacyPolicyAndTermsofUse extends StatelessWidget {
  const PrivacyPolicyAndTermsofUse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(
                shape: const CircleBorder(),
                value: true,
                onChanged: (value) {})),
        const SizedBox(
          width: CustomSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: CustomTexts.agreeTo,
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: CustomTexts.privacyPolicy,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? CustomColor.white : CustomColor.black,
                decoration: TextDecoration.underline,
                decorationColor:
                    dark ? CustomColor.white : CustomColor.primary),
          ),
          TextSpan(
              text: CustomTexts.and,
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: CustomTexts.termsOfUse,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? CustomColor.white : CustomColor.black,
                decoration: TextDecoration.underline,
                decorationColor:
                    dark ? CustomColor.white : CustomColor.primary),
          ),
        ]))
      ],
    );
  }
}
