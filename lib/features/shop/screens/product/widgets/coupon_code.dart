import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/shape_widgets/custom_curved_edges.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class CouponTextField extends StatelessWidget {
  const CouponTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);
    return CircularContainer(
      showBorder: true,
      backgroundColor: dark ? CustomColor.dark : CustomColor.white,
      padding: const EdgeInsets.only(
          top: CustomSizes.sm,
          bottom: CustomSizes.sm,
          right: CustomSizes.sm,
          left: CustomSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: "Please enter PROMO code",
                  hintStyle: TextStyle(color: CustomColor.darkGrey),
                  border: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.darkerGrey.withOpacity(0.2),
                foregroundColor: dark
                    ? CustomColor.white.withOpacity(0.5)
                    : CustomColor.dark.withOpacity(0.5),
                side: BorderSide(
                    color: CustomColor.grey.withOpacity(0.1))),
            child: const Text("Apply"),
          ),
        ],
      ),
    );
  }
}
