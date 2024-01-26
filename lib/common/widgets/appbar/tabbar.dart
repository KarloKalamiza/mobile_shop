import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/device/custom_device_uutils.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';

class CustomTabbar extends StatelessWidget  implements PreferredSizeWidget{
  const CustomTabbar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return Material(
      color: dark ? CustomColor.black : CustomColor.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: CustomColor.primary,
        unselectedLabelColor: CustomColor.darkGrey,
        labelColor: dark ? CustomColor.white : CustomColor.primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CustomDeviceUtils.getAppBarHeight());
}
