import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/screens/navigation/cart/set_location_map_screen.dart';
import 'package:food_ninja/screens/navigation/cart/shipping_screen.dart';

import 'package:food_ninja/theme/custom_themes.dart';

import '../../../../utils/constants.dart';

class LocationCard extends StatelessWidget {
  final String header;
  final String address;
  final bool hasEdit;
  final bool hasSet;
  const LocationCard({
    Key? key,
    required this.header,
    required this.address,
    this.hasEdit = false,
    this.hasSet = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hasSet ? 141 : 108,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      padding: const EdgeInsetsDirectional.only(start: 12),
      decoration: CustomThemes.decorationShadow(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  header,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              if (hasEdit)
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(ShippingScreen.routeName);
                  },
                  child: Text(
                    "Edit",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                Constants.pin,
                height: 33,
                width: 33,
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 300),
                      child: Text(
                        address,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    if (hasSet)
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(SetLocationMapScreen.routeName);
                        },
                        child: Text(
                          "set location",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
