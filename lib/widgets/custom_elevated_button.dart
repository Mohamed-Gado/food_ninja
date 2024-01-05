import 'package:flutter/material.dart';
import 'package:food_ninja/theme/custom_themes.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final double? width;
  final double height;
  final double? textSize;
  const CustomElevatedButton({
    super.key,
    required this.onTap,
    required this.title,
    this.width,
    this.height = 57,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: CustomThemes.primaryGradient(),
        ),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .labelMedium
              ?.copyWith(fontSize: textSize),
        ),
      ),
    );
  }
}
