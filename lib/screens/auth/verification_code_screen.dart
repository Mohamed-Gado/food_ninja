import 'package:flutter/material.dart';
import 'package:food_ninja/screens/auth/payment_method_screen.dart';
import 'package:food_ninja/screens/auth/widgets/screen_info_header.dart';
import 'package:food_ninja/theme/custom_themes.dart';
import 'package:food_ninja/widgets/custom_elevated_button.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../utils/utils.dart';

class VerificationCodeScreen extends StatelessWidget {
  static const routeName = "VerificationCodeScreen";
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      heightPercentageShifting: 0.15,
      horizontalPadding: 13,
      widget: Utils.keyboardHandlerWrapper(
        context: context,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ScreenInfoHeader(
                  headerText: "Enter 4-digit\nVerification code",
                  descriptionText:
                      "Code send to +6282045**** . This code will\nexpired in 01:30",
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(16),
                  height: 100,
                  alignment: Alignment.center,
                  decoration: CustomThemes.decorationShadow(context),
                  child: PinCodeTextField(
                    showCursor: false,
                    appContext: context,
                    length: 4,
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    pinTheme: const PinTheme.defaults(
                      borderWidth: 0,
                      activeBorderWidth: 0,
                      fieldHeight: 70,
                      activeColor: Colors.transparent,
                      inactiveColor: Colors.transparent,
                      selectedColor: Colors.transparent,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomElevatedButton(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(PaymentMethodScreen.routeName);
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
