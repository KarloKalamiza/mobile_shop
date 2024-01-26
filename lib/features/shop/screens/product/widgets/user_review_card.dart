import 'package:flutter/material.dart';
import 'package:karlo_kalamiza_shop/common/widgets/rounded_image.dart';
import 'package:karlo_kalamiza_shop/common/widgets/shape_widgets/custom_curved_edges.dart';
import 'package:karlo_kalamiza_shop/features/shop/screens/product/widgets/star_raintgs_indicator.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';
import 'package:karlo_kalamiza_shop/utils/constants/image_strings.dart';
import 'package:karlo_kalamiza_shop/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const RoundedImage(imageUrl: CustomImages.google, height: 30, width: 30,),
                const SizedBox(width: CustomSizes.spaceBtwItems,),
                Text("Rafael Nadal", style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),

            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems,),

        Row(
          children: [
            const StarRatingIndicator(rating: 4.5),
            const SizedBox(width: CustomSizes.spaceBtwItems,),
            Text("06. Lipanj, 2024.", style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems,),
        ReadMoreText(
          "These Nike sport shoes are a game-changer! The comfort is unmatched, making every workout feel like a breeze. The sleek design and attention to detail not only boost my performance but also elevate my style, making these shoes a must-have in any fitness enthusiast's wardrobe.",
          textAlign: TextAlign.justify,
          trimMode: TrimMode.Line,
          trimLines: 1,
          trimExpandedText: "Show less",
          trimCollapsedText: "Show more",
          lessStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
          moreStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: CustomSizes.spaceBtwItems,),
        CircularContainer(
          backgroundColor: CustomColor.grey,
          child: Padding(
            padding: const EdgeInsets.all(CustomSizes.defaultSpace),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nike company", style: Theme.of(context).textTheme.bodyLarge),
                    Text("01. January, 2024", style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: CustomSizes.spaceBtwItems,),
                ReadMoreText(
                  "These Nike sport shoes are a game-changer! The comfort is unmatched, making every workout feel like a breeze. The sleek design and attention to detail not only boost my performance but also elevate my style, making these shoes a must-have in any fitness enthusiast's wardrobe.",
                  textAlign: TextAlign.justify,
                  trimMode: TrimMode.Line,
                  trimLines: 1,
                  trimExpandedText: "Show less",
                  trimCollapsedText: "Show more",
                  lessStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                  moreStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: CustomSizes.spaceBtwItems,),
      ],
    );
  }
}
