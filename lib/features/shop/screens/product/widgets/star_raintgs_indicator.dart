import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:karlo_kalamiza_shop/utils/constants/colors.dart';

class StarRatingIndicator extends StatelessWidget {
  const StarRatingIndicator({
    super.key, required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemBuilder: (_, __) => const Icon(Iconsax.star1, color: CustomColor.primary,),
      rating: rating,
      itemSize: 20,
      unratedColor: CustomColor.grey,
    );
  }
}