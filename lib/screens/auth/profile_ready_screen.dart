import 'package:flutter/material.dart';
import 'package:food_ninja/screens/auth/widgets/process_completed.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

class ProfileReadyScreen extends StatelessWidget {
  static const routeName = "ProfileReadyScreen";
  const ProfileReadyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      widget: ProcessCompleted(
        processDescription: "Your Profile Is Ready To Use",
        btnTitle: "Try Order",
        onTap: () {},
      ),
    );
  }
}
