import 'package:flutter/material.dart';
import 'package:food_ninja/screens/rate_screens/widgets/rate.dart';

import '../../utils/constants.dart';

class RateRestaurantScreen extends StatelessWidget {
  static const routeName = "RateRestaurantScreen";
  const RateRestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Rate(
      image: Constants.restaurantLogo,
      title: "Thank You!\nEnjoy Your Meal",
      hint: "Please rate your Food",
      onSubmit: () {
        Navigator.of(context).pushReplacementNamed("/");
      },
      onSkip: () {
        Navigator.of(context).pushReplacementNamed("/");
      },
    );
  }
}
