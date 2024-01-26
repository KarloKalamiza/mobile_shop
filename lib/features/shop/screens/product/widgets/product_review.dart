import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/appbar/custom_appbar.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'ratings_overall.dart';
import 'star_raintgs_indicator.dart';
import 'user_review_card.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Review and Ratings",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Reviews and ratings are verified and are from people who use the same type of device as You are.",
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwItems,
              ),

              const OverallRatings(),
              const SizedBox(height: CustomSizes.spaceBtwSections,),

              const StarRatingIndicator(rating: 4.5,),
              const SizedBox(height: CustomSizes.spaceBtwItems / 2,),
              Text("120000", style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: CustomSizes.spaceBtwSections,),

              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}