import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/screens/auth/profile_ready_screen.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/theme/custom_colors.dart';
import 'package:food_ninja/theme/custom_themes.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/screen_bachground.dart';
import 'widgets/screen_info_header.dart';

class SetLocationScreen extends StatelessWidget {
  static const routeName = "SetLocationScreen";
  const SetLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      horizontalPadding: 14,
      heightPercentageShifting: 0.15,
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenInfoHeader(
                headerText: "Set Your Location",
                descriptionText:
                    "This data will be displayed in your account\nprofile for security",
              ),
              const SizedBox(height: 20),
              Container(
                decoration: CustomThemes.decorationShadow(context),
                height: 147,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(11, 20, 0, 0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 14),
                            child: SvgPicture.asset(
                              Constants.pin,
                              height: 33,
                              width: 33,
                            ),
                          ),
                          Text(
                            "Your Location",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 57,
                      alignment: Alignment.center,
                      decoration: CustomThemes.decorationShadow(context,
                          lightColor: CustomColors.grayBackground),
                      child: Text(
                        "Set Location",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          CustomElevatedButton(
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  ProfileReadyScreen.routeName, (route) => false);
            },
            title: "Next",
            width: 157,
          ),
        ],
      ),
    );
  }
}
