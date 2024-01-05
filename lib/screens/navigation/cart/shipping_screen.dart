import 'package:flutter/material.dart';

import '../../../widgets/screen_bachground.dart';
import '../widgets/screen_header.dart';
import 'widgets/location_card.dart';

class ShippingScreen extends StatelessWidget {
  static const routeName = "ShippingScreen";
  const ShippingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenBackground(
      heightPercentageShifting: 0.15,
      horizontalPadding: 0,
      widget: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 25, top: 10),
            child: ScreenHeader(title: "Shipping"),
          ),
          Expanded(
            child: Column(
              children: [
                LocationCard(
                  header: "Order Location",
                  address: "8502 Preston Rd. Inglewood, Maine 98380",
                ),
                LocationCard(
                  header: "Deliver To",
                  address: "4517 Washington Ave. Manchester, Kentucky 39495",
                  hasSet: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
