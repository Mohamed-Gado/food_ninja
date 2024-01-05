import 'package:flutter/material.dart';

class ScreenInfoHeader extends StatelessWidget {
  final String headerText;
  final String descriptionText;
  const ScreenInfoHeader({
    Key? key,
    required this.headerText,
    required this.descriptionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              headerText,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          Text(
            descriptionText,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
