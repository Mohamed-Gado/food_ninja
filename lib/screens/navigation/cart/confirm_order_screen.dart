import 'package:flutter/material.dart';
import 'package:food_ninja/screens/navigation/cart/widgets/location_card.dart';
import 'package:food_ninja/screens/navigation/cart/widgets/payment_card.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

import '../widgets/screen_header.dart';
import 'widgets/order_card.dart';

class ConfirmOrderScreen extends StatelessWidget {
  static const routeName = "ConfirmOrderScreen";
  const ConfirmOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      heightPercentageShifting: 0.15,
      horizontalPadding: 0,
      widget: Column(
        children: [
          const Padding(
            padding: EdgeInsetsDirectional.only(start: 25, top: 10),
            child: ScreenHeader(title: "Confirm details"),
          ),
          const Expanded(
            child: Column(
              children: [
                LocationCard(
                  header: "Deliver To",
                  address: "4517 Washington Ave. Manchester, Kentucky 39495",
                  hasEdit: true,
                ),
                PaymentCard(
                  image: Constants.paypalLogo,
                  info: "2121 6352 8465 ****",
                  hasEdit: true,
                )
              ],
            ),
          ),
          Hero(
            tag: "OrderCard",
            child: OrderCard(
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
