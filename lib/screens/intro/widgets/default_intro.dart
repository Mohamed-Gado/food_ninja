import 'package:flutter/material.dart';
import '../../../widgets/custom_elevated_button.dart';

class DefaultIntro extends StatelessWidget {
  final String imagePath;
  final String headline;
  final String caption;
  final void Function() onTap;

  const DefaultIntro({
    super.key,
    required this.imagePath,
    required this.caption,
    required this.headline,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(imagePath),
            Text(
              headline,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              caption,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            CustomElevatedButton(
              onTap: onTap,
              title: "Next",
              width: 157,
            ),
          ],
        ),
      ),
    );
  }
}
