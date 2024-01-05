import 'package:flutter/material.dart';
import 'package:food_ninja/screens/auth/password_reset_successfully.dart';
import 'package:food_ninja/screens/auth/widgets/screen_info_header.dart';
import 'package:food_ninja/utils/utils.dart';
import 'package:food_ninja/widgets/custom_elevated_button.dart';
import 'package:food_ninja/widgets/custom_text_field.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

class ResetPasswordScreen extends StatelessWidget {
  static const routeName = "ResetPasswordScreen";
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      widget: Utils.keyboardHandlerWrapper(
        context: context,
        child: Column(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScreenInfoHeader(
                  headerText: "Reset your password\nhere",
                  descriptionText:
                      "Select which contact details should we\nuse to reset your password",
                ),
                SizedBox(height: 20),
                CustomTextField(
                  hint: "New Password",
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                CustomTextField(
                  hint: "Confirm Password",
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
              ],
            ),
            const Spacer(),
            CustomElevatedButton(
              onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    PasswordResetSuccessfully.routeName, (route) => false);
              },
              title: "Next",
              width: 157,
            )
          ],
        ),
      ),
    );
  }
}
