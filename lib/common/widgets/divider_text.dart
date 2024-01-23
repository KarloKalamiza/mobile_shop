import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

import '../../utils/constants/colors.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return Row(
      children: [
        Flexible(
          child: Divider(
            color: dark ? CustomColor.dark : CustomColor.light,
            thickness: 2.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(text, style: Theme.of(context).textTheme.labelMedium,),
        Flexible(
          child: Divider(
            color: dark ? CustomColor.dark : CustomColor.light,
            thickness: 2.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}