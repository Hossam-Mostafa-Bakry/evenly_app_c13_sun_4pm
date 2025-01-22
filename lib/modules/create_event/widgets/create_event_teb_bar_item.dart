import 'package:evently_app_c13_sun_4_pm/core/extensions/size_ext.dart';
import 'package:evently_app_c13_sun_4_pm/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

class CreateEventTabBarItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  final IconData icon;

  const CreateEventTabBarItem({
    super.key,
    required this.text,
    required this.icon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? ColorPalette.primaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: ColorPalette.primaryColor,
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? ColorPalette.white : ColorPalette.primaryColor,
          ),
          8.spaceHorizontal,
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color:
                  isSelected ? ColorPalette.white : ColorPalette.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}