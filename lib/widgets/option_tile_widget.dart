import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_colors.dart';

class OptionTile extends StatelessWidget {
  final String option;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionTile({
    super.key,
    required this.option,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(15),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: isSelected
              ? AppPallete.primaryColor
              : AppPallete.primaryTextColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          option,
          style: TextStyle(
            color: AppPallete.blackColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
