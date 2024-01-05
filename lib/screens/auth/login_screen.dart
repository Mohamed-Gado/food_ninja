import 'package:flutter/material.dart';
import 'package:food_ninja/screens/auth/forget_password_screen.dart';
import 'package:food_ninja/screens/navigation/navigation_screen.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/screens/auth/signup_screen.dart';
import 'package:food_ninja/screens/auth/widgets/logo.dart';
import 'package:food_ninja/screens/auth/widgets/social_media_auth_button.dart';
import 'package:food_ninja/utils/utils.dart';
import 'package:food_ninja/widgets/custom_elevated_button.dart';
import 'package:food_ninja/widgets/custom_text_field.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "LoginScreen";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      widget: Utils.keyboardHandlerWrapper(
        context: context,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Logo(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Login To Your Account",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Column(
                    children: [
                      const CustomTextField(
                        hint: "Email",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const CustomTextField(
                        hint: "Password",
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Or Continue With",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SocialMediaAuthButton(
                            title: "Facebook",
                            logo: Constants.facebookLogo,
                          ),
                          SizedBox(width: 25),
                          SocialMediaAuthButton(
                            title: "Google",
                            logo: Constants.googleLogo,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(ForgetPasswordScreen.routeName);
                        },
                        child: const Text("Forgot Your Password?"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomElevatedButton(
                        onTap: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              NavigationScreen.routeName, (route) => false);
                        },
                        title: "Login",
                        width: 141,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(SignupScreen.routeName);
                        },
                        child: const Text("Don't have an account?"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
