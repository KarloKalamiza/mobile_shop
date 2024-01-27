import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/custom_appbar.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/profile/addresses/add_address.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/profile/addresses/single_address.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text("Addresses", style: Theme
            .of(context)
            .textTheme
            .headlineSmall),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddAddressScreen()),
        backgroundColor: CustomColor.primary,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: true ,),
              SingleAddress(selectedAddress: false ,),
              SingleAddress(selectedAddress: false ,),
              SingleAddress(selectedAddress: false ,),
              SingleAddress(selectedAddress: false ,),
              SingleAddress(selectedAddress: false ,),
              SingleAddress(selectedAddress: false ,),
            ],
          ),
        ),
      ),
    );
  }
}