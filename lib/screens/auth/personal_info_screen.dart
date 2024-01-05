import 'package:flutter/material.dart';
import 'package:food_ninja/screens/auth/verification_code_screen.dart';
import 'package:food_ninja/screens/auth/widgets/screen_info_header.dart';
import 'package:food_ninja/utils/utils.dart';
import 'package:food_ninja/widgets/custom_elevated_button.dart';
import 'package:food_ninja/widgets/custom_text_field.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

class PersonalInfoScreen extends StatelessWidget {
  static const routeName = "PersonalInfoScreen";
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      horizontalPadding: 14,
      heightPercentageShifting: 0.15,
      widget: Utils.keyboardHandlerWrapper(
        context: context,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScreenInfoHeader(
                  headerText: "Fill in your bio to get\nstarted",
                  descriptionText:
                      "This data will be displayed in your account\nprofile for security",
                ),
                SizedBox(height: 10),
                CustomTextField(
                  hint: "First Name",
                ),
                SizedBox(height: 10),
                CustomTextField(
                  hint: "Last Name",
                ),
                SizedBox(height: 10),
                CustomTextField(
                  hint: "Mobile Number",
                ),
              ],
            ),
            CustomElevatedButton(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(VerificationCodeScreen.routeName);
              },
              title: "Next",
              width: 157,
            ),
          ],
        ),
      ),
    );
  }
}
