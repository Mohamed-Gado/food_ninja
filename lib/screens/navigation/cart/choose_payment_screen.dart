import 'package:flutter/material.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

import '../../../utils/constants.dart';
import '../widgets/screen_header.dart';
import 'widgets/payment_card.dart';

class ChoosePaymentScreen extends StatelessWidget {
  static const routeName = "ChoosePaymentScreen";
  const ChoosePaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenBackground(
      heightPercentageShifting: 0.15,
      horizontalPadding: 0,
      widget: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 25, top: 10),
            child: ScreenHeader(title: "Payment"),
          ),
          Expanded(
            child: Column(
              children: [
                PaymentCard(
                  image: Constants.paypalLogo,
                  info: "2121 6352 8465 ****",
                  hasEdit: false,
                ),
                PaymentCard(
                  image: Constants.visaLogo,
                  info: "2121 6352 8465 ****",
                  hasEdit: false,
                  selected: false,
                ),
                PaymentCard(
                  image: Constants.payoneerLogo,
                  info: "2121 6352 8465 ****",
                  hasEdit: false,
                  selected: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
