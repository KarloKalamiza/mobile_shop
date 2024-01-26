import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class CustomSectionHeading extends StatelessWidget {
  const CustomSectionHeading({
    super.key,
    required this.title,
    this.buttonText = "View All",
    this.buttonVisible = false,
    this.onPressed,
  });

  final String title;
  final String buttonText;
  final bool buttonVisible;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: dark ? Colors.white : CustomColor.primary),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (buttonVisible) TextButton(onPressed: onPressed, child: Text(buttonText))
      ],
    );
  }
}
