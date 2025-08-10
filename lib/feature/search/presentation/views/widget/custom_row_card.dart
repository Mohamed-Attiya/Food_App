import 'package:flutter/material.dart';
import 'package:food_app/core/utils/styles.dart';
import 'package:food_app/feature/search/data/model/meals_food.dart';
import 'package:food_app/feature/search/presentation/views/widget/custom_food_cached_image.dart';

class CustomFoodCardRow extends StatelessWidget {
  const CustomFoodCardRow({super.key, required this.meal});
  final MealsFood meal;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(meal.strMeal ?? " ", style: Styles.textRegular18),
              const SizedBox(height: 4),
              Text(
                meal.strInstructions ?? " ",
                style: Styles.textRegular13,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Text(meal.strArea ?? " ", style: Styles.textSemiBold15),
            ],
          ),
        ),
        const SizedBox(width: 12),
        CustomFoodCachedImage(meal: meal),
      ],
    );
  }
}
