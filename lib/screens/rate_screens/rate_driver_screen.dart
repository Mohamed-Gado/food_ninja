import 'package:flutter/material.dart';
import 'package:food_ninja/screens/rate_screens/rate_food_screen.dart';
import 'package:food_ninja/screens/rate_screens/widgets/rate.dart';
import 'package:food_ninja/utils/constants.dart';

class RateDriverScreen extends StatelessWidget {
  static const routeName = "RateDriverScreen";
  const RateDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Rate(
      image: Constants.chat1,
      imageEffects: true,
      title: "Thank You!\nOrder Completed",
      hint: "Please rate your last Driver",
      onSubmit: () {
        Navigator.of(context).pushReplacementNamed(RateFoodScreen.routeName);
      },
      onSkip: () {
        Navigator.of(context).pushReplacementNamed(RateFoodScreen.routeName);
      },
    );
  }
}
