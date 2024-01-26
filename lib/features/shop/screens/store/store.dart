import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/custom_appbar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/tabbar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/brand_card.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_card/card_menu_item.dart';
import 'package:karlo_kalamiza_shop/common/widgets/product_cards/card_gridview.dart';
import 'package:karlo_kalamiza_shop/common/widgets/search_bar.dart';
import 'package:karlo_kalamiza_shop/common/widgets/section_heading.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:karlo_kalamiza_shop/utils/helpers/custom_helper.dart';
import '../../../../common/widgets/category_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelper.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            ShoppingCounterIcon(
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: dark ? Colors.black : Colors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(CustomSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        // search bar
                        const SizedBox(
                          height: CustomSizes.spaceBtwItems,
                        ),
                        CustomSearchBar(
                          title: Text(
                            "Search",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .apply(color: CustomColor.darkGrey),
                          ),
                          showBorder: true,
                          showBackground: false,
                        ),
                        const SizedBox(
                          height: CustomSizes.spaceBtwItems,
                        ),

                        // Factured brands
                        CustomSectionHeading(
                            title: "Factured Brands",
                            onPressed: () {},
                            buttonVisible: true),
                        const SizedBox(
                          height: CustomSizes.spaceBtwItems / 1.5,
                        ),
                        CustomGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const BrandCard(showBorder: true,);
                            })
                      ],
                    ),
                  ),

                  // Tabs
                  bottom: const CustomTabbar(
                    tabs: [
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Electronics"),
                      ),
                      Tab(
                        child: Text("Furniture"),
                      ),
                      Tab(
                        child: Text("Clothes"),
                      ),
                      Tab(
                        child: Text("Cosmetics"),
                      ),
                    ],
                  )),
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}