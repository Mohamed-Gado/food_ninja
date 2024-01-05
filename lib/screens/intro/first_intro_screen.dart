import 'package:flutter/material.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/screens/intro/second_intro_screen.dart';
import 'package:food_ninja/screens/intro/widgets/default_intro.dart';

class FirstIntroScreen extends StatelessWidget {
  static const String routeName = "FirstIntroScreen";
  const FirstIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultIntro(
      imagePath: Constants.introSweets,
      caption:
          "Here You Can find a chef or dish for every\ntaste and color. Enjoy!",
      headline: "Find your Comfort\nFood here",
      onTap: () {
        Navigator.of(context).pushReplacementNamed(SecondIntroScreen.routeName);
      },
    );
  }
}
