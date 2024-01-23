import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/styles/spacing_styles.dart';
import 'package:karlo_kalamiza_shop/common/widgets/circle_social_icon.dart';
import 'package:karlo_kalamiza_shop/common/widgets/divider_text.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/constants/text_strings.dart';
import 'widgtes/login_form.dart';
import 'widgtes/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CustomSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(),

              LoginForm(),

              DividerWithText(
                text: CustomTexts.signInWith,
              ),
              SizedBox(
                height: CustomSizes.spaceBtwSections,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleSocialIcon(
                    social: CustomImages.google,
                    borderColor: CustomColor.grey,
                  ),
                  SizedBox(
                    width: CustomSizes.spaceBtwItems,
                  ),
                  CircleSocialIcon(
                    social: CustomImages.facebook,
                    borderColor: CustomColor.grey,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
