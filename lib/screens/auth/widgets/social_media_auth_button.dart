import 'package:flutter/material.dart';
import 'package:food_ninja/theme/custom_themes.dart';

class SocialMediaAuthButton extends StatelessWidget {
  final String title;
  final String logo;
  const SocialMediaAuthButton({
    super.key,
    required this.title,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 57,
        decoration: CustomThemes.decorationShadow(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 13),
              child: Image.asset(
                logo,
                width: 25,
                height: 25,
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
