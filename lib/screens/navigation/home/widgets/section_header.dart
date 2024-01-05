import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final bool viewMore;
  const SectionHeader({
    super.key,
    required this.title,
    this.viewMore = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        if (viewMore)
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.secondary,
            ),
            child: const Text("View More"),
          ),
      ],
    );
  }
}
