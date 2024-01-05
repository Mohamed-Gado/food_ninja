import 'package:flutter/material.dart';
import 'package:food_ninja/screens/auth/widgets/process_completed.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

class PasswordResetSuccessfully extends StatelessWidget {
  static const routeName = "PasswordResetSuccessfully";
  const PasswordResetSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      widget: ProcessCompleted(
        processDescription: "Password reset successfully",
        btnTitle: "Back",
        onTap: () {
          Navigator.of(context).pushReplacementNamed("/");
        },
      ),
    );
  }
}
