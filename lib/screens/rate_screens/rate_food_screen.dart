import 'package:flutter/material.dart';
import 'package:food_ninja/screens/rate_screens/rate_restaurant_screen.dart';
import 'package:food_ninja/screens/rate_screens/widgets/rate.dart';

import '../../utils/constants.dart';

class RateFoodScreen extends StatelessWidget {
  static const routeName = "RateFoodScreen";
  const RateFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Rate(
      image: Constants.meal,
      title: "Thank You!\nEnjoy Your Meal",
      hint: "Please rate your Food",
      onSubmit: () {
        Navigator.of(context)
            .pushReplacementNamed(RateRestaurantScreen.routeName);
      },
      onSkip: () {
        Navigator.of(context)
            .pushReplacementNamed(RateRestaurantScreen.routeName);
      },
    );
  }
}
