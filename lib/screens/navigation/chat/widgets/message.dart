import 'package:flutter/material.dart';
import 'package:food_ninja/theme/custom_themes.dart';

class Message extends StatelessWidget {
  final bool fromMe;
  final String message;
  const Message({
    Key? key,
    required this.fromMe,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          fromMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          margin: const EdgeInsets.only(bottom: 15),
          decoration: fromMe
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: CustomThemes.primaryGradient(),
                )
              : CustomThemes.decorationShadow(context),
          child: Text(
            message,
            style: fromMe
                ? Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: Colors.white)
                : Theme.of(context).textTheme.labelSmall,
          ),
        )
      ],
    );
  }
}
