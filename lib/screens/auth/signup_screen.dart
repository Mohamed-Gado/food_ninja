import 'package:flutter/material.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/screens/auth/login_screen.dart';
import 'package:food_ninja/screens/auth/personal_info_screen.dart';
import 'package:food_ninja/screens/auth/widgets/custom_check_tile.dart';
import 'package:food_ninja/screens/auth/widgets/logo.dart';
import 'package:food_ninja/widgets/custom_elevated_button.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

import '../../utils/utils.dart';
import '../../widgets/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
  static const String routeName = "SignupScreen";
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
        widget: Utils.keyboardHandlerWrapper(
      child: Column(
        children: [
          const Logo(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Sign Up For Free ",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Column(
                  children: [
                    CustomTextField(
                      hint: "Anamwp . . |",
                      keyboardType: TextInputType.emailAddress,
                      iconPath: Constants.profile,
                    ),
                    CustomTextField(
                      hint: "Email",
                      keyboardType: TextInputType.emailAddress,
                      iconPath: Constants.message,
                    ),
                    CustomTextField(
                      hint: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      iconPath: Constants.lock,
                    ),
                    SizedBox(height: 20),
                    CustomCheckTile(title: "Keep Me Signed In"),
                    CustomCheckTile(title: "Email Me About Special Pricing"),
                  ],
                ),
                Column(
                  children: [
                    CustomElevatedButton(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(PersonalInfoScreen.routeName);
                      },
                      title: "Create Account",
                      width: 175,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(LoginScreen.routeName);
                      },
                      child: const Text("already have an account?"),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      context: context,
    ));
  }
}
