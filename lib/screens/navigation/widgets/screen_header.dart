import 'package:flutter/material.dart';

class ScreenHeader extends StatelessWidget {
  final String title;
  final Widget? widget;
  const ScreenHeader({
    super.key,
    required this.title,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const Spacer(),
          if (widget != null) widget!
        ],
      ),
    );
  }
}
