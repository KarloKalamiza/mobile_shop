import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/device/custom_device_uutils.dart';

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    super.key, required this.text, required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded( flex: 2, child: Text(text, style: Theme.of(context).textTheme.bodyMedium,)),
        Expanded(
          flex: 10,
          child: SizedBox(
            width: CustomDeviceUtils.getScreenWidth() * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 10,
              backgroundColor: CustomColor.grey,
              borderRadius: BorderRadius.circular(7),
              valueColor: const AlwaysStoppedAnimation(CustomColor.primary),
            ),
          ),
        ),
      ],
    );
  }
}
