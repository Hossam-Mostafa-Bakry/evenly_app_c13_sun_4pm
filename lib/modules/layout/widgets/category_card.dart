import 'package:evently_app_c13_sun_4_pm/core/extensions/extensions.dart';
import 'package:evently_app_c13_sun_4_pm/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(8),
      height: 0.25.height,
      width: 0.9.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorPalette.primaryColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage(
            "assets/images/category/holiday.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            child: const Column(
              children: [
                Text(
                  "25",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.primaryColor,
                  ),
                ),
                Text(
                  "Nov",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.primaryColor,
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
                color: ColorPalette.white,
                borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.all(8),
            child: const Row(
              children: [
                Text(
                  "This is a Birthday Party ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.black,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.favorite,
                  color: ColorPalette.primaryColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
