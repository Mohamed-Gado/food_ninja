import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/theme/custom_themes.dart';
import 'package:food_ninja/utils/constants.dart';

enum NotificationType {
  orderAccepted,
  moneyEarned,
  orderCancelled,
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String date;
  final NotificationType type;
  const NotificationItem({
    super.key,
    required this.title,
    required this.date,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: CustomThemes.decorationShadow(context),
      alignment: Alignment.center,
      height: 105,
      width: double.infinity,
      child: Row(
        children: [
          SvgPicture.asset(
            type == NotificationType.moneyEarned
                ? Constants.money
                : type == NotificationType.orderAccepted
                    ? Constants.checked
                    : Constants.xButton,
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  date,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
