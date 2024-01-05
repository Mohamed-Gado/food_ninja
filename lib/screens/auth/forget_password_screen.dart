import 'package:flutter/material.dart';
import 'package:food_ninja/screens/auth/reset_password_screen.dart';
import 'package:food_ninja/screens/auth/widgets/reset_password_method.dart';
import 'package:food_ninja/screens/auth/widgets/screen_info_header.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/widgets/custom_elevated_button.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const routeName = "ForgetPasswordScreen";
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      widget: Column(
        children: [
          const ScreenInfoHeader(
            headerText: 'Forgot password?',
            descriptionText:
                'Select which contact details should we use to reset your password',
          ),
          const SizedBox(height: 20),
          const ResetPasswordMethod(
            imagePath: Constants.bigMessage,
            method: "Via sms:",
            methodInfo: "●●●● ●●●● 4235",
          ),
          const ResetPasswordMethod(
            imagePath: Constants.email,
            method: "Via email:",
            methodInfo: "●●●● @gmail.com",
          ),
          const Spacer(),
          CustomElevatedButton(
            onTap: () {
              Navigator.of(context).pushNamed(ResetPasswordScreen.routeName);
            },
            title: "Next",
            width: 157,
          )
        ],
      ),
    );
  }
}
