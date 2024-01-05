import 'package:flutter/material.dart';
import 'package:food_ninja/screens/navigation/cart/choose_payment_screen.dart';
import 'package:food_ninja/utils/utils.dart';

import '../../../../theme/custom_themes.dart';

class PaymentCard extends StatelessWidget {
  final String image;
  final String info;
  final bool hasEdit;
  final bool selected;
  const PaymentCard({
    Key? key,
    required this.image,
    required this.info,
    this.hasEdit = false,
    this.selected = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hasEdit ? 100 : 73,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      padding: const EdgeInsetsDirectional.only(start: 12),
      decoration: CustomThemes.decorationShadow(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (hasEdit)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Method",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(ChoosePaymentScreen.routeName);
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
          Padding(
            padding: EdgeInsetsDirectional.only(
                start: 8.0, end: 20, bottom: hasEdit ? 10 : 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  image,
                  color: Utils.isDark(context) ? Colors.white : null,
                  width: 83,
                  height: 32,
                  alignment: AlignmentDirectional.centerStart,
                ),
                Text(
                  info,
                  style: selected
                      ? Theme.of(context).textTheme.bodyLarge
                      : Theme.of(context).textTheme.labelSmall,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
