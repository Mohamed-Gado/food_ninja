import 'package:flutter/material.dart';
import 'package:food_ninja/screens/navigation/home/notifications/widgets/notification_item.dart';
import 'package:food_ninja/screens/navigation/widgets/screen_header.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

class NotificationsScreen extends StatelessWidget {
  static const routeName = "NotificationsScreen";
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
        widget: Column(
      children: [
        const ScreenHeader(title: "Notification"),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (ctx, i) {
              return NotificationItem(
                title: i == 0
                    ? 'Your order has been taken by the driver'
                    : i == 1
                        ? "Topup for \$100 was successful"
                        : "Your order has been canceled",
                type: i == 0
                    ? NotificationType.orderAccepted
                    : i == 1
                        ? NotificationType.moneyEarned
                        : NotificationType.orderCancelled,
                date: i == 0
                    ? "Recently"
                    : i == 1
                        ? "10.00 Am"
                        : "22 Juny 2021",
              );
            },
          ),
        ),
      ],
    ));
  }
}
