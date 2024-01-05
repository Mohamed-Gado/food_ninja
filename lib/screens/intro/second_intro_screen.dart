import 'package:flutter/material.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/screens/auth/login_screen.dart';
import 'package:food_ninja/screens/intro/widgets/default_intro.dart';

class SecondIntroScreen extends StatelessWidget {
  static const String routeName = "SecondIntroScreen";
  const SecondIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultIntro(
      imagePath: Constants.introJunkfood,
      caption: "Enjoy a fast and smooth food delivery at\nyour doorstep",
      headline: "Food Ninja is Where Your\nComfort Food Lives",
      onTap: () {
        Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
      },
    );
  }
}
