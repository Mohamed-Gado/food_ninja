import 'package:flutter/material.dart';
import 'package:food_ninja/utils/constants.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Constants.logo,
          width: 175,
        ),
        Text(
          "Food Ninja",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          "Deliever Favorite Food",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
