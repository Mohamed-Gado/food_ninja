import 'package:flutter/material.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/screens/auth/add_profile_photo_screen.dart';
import 'package:food_ninja/screens/auth/widgets/screen_info_header.dart';
import 'package:food_ninja/widgets/custom_elevated_button.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

import 'widgets/custom_image_button.dart';

class PaymentMethodScreen extends StatelessWidget {
  static const routeName = "PaymentMethodScreen";
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      horizontalPadding: 14,
      heightPercentageShifting: 0.15,
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScreenInfoHeader(
                headerText: "Payment Method",
                descriptionText:
                    "This data will be displayed in your account\nprofile for security",
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  children: [
                    CustomImageButton(logo: Constants.paypalLogo),
                    CustomImageButton(logo: Constants.visaLogo),
                    CustomImageButton(logo: Constants.payoneerLogo),
                  ],
                ),
              ),
            ],
          ),
          CustomElevatedButton(
            onTap: () {
              Navigator.of(context).pushNamed(AddProfilePhotoScreen.routeName);
            },
            title: "Next",
            width: 157,
          ),
        ],
      ),
    );
  }
}
