import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_app/feature/home/data/models/food_results.dart';
import 'package:shimmer/shimmer.dart';

class CustomCachedImage extends StatelessWidget {
  const CustomCachedImage({super.key, required this.food});

  final FoodResults food;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 1.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: food.image ?? " ",
          placeholder:
              (context, url) => Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(color: Colors.white),
              ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
