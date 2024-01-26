import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karlo_kalamiza_shop/common/widgets/section_heading.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/widgets/product_attribute.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/widgets/product_metadata.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/widgets/product_review.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';
import 'widgets/bottom_navigation.dart';
import 'widgets/product_images_slider.dart';
import 'widgets/ratings_and_share.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationProduct(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product image slider
            const ProductImagesSlider(),

            // product details
            Padding(
              padding: const EdgeInsets.only(
                  left: CustomSizes.defaultSpace,
                  right: CustomSizes.defaultSpace,
                  bottom: CustomSizes.defaultSpace),
              child: Column(
                children: [
                  // rating and share
                  const RatingsAndShare(),

                  // price, title, stock and brand
                  const ProductMetaData(),

                  // attributes
                  const ProductAttributes(),
                  const SizedBox(
                    height: CustomSizes.spaceBtwSections,
                  ),

                  // checkout button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Checkout")),
                  ),
                  const SizedBox(
                    height: CustomSizes.spaceBtwSections,
                  ),

                  // description
                  const CustomSectionHeading(title: "Description"),
                  const SizedBox(
                    height: CustomSizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    "Discover the epitome of performance and style with Nike's latest sport shoes collection. Engineered for excellence, these shoes seamlessly blend cutting-edge technology with a sleek design, providing unparalleled comfort and support for your active lifestyle. Elevate your athletic experience with Nike's renowned craftsmanship, ensuring durability and dynamic performance. Whether you're hitting the gym, going for a run, or embracing your daily hustle, step into confidence and agility with Nike sport shoes – where innovation meets fashion for the modern mobile enthusiast.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show more",
                    trimExpandedText: "Show less",
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: CustomSizes.spaceBtwSections,
                  ),

                  const Divider(),
                  const SizedBox(
                    height: CustomSizes.spaceBtwSections,
                  ),

                  // reviews
                  CustomSectionHeading(
                    title: "Reviews (199)",
                    buttonVisible: true,
                    buttonText: "See All",
                    onPressed: () => Get.to(() => const ProductReviewScreen()),
                  ),
                  const SizedBox(
                    height: CustomSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
