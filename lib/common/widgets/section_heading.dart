import 'package:flutter/material.dart';

class CustomSectionHeading extends StatelessWidget {
  const CustomSectionHeading({
    super.key,
    required this.title,
    required this.textColor,
    this.buttonText = "View All",
    this.buttonVisible = false,
    this.onPressed,
  });

  final String title;
  final Color textColor;
  final String buttonText;
  final bool buttonVisible;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (buttonVisible) TextButton(onPressed: onPressed, child: Text(buttonText))
      ],
    );
  }
}
