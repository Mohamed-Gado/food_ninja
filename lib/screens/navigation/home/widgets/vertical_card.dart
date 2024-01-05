import 'package:flutter/material.dart';
import 'package:food_ninja/theme/custom_themes.dart';

class VerticalCard extends StatelessWidget {
  final String image;
  final String name;
  final String subTitle;
  final void Function()? onTap;

  const VerticalCard({
    super.key,
    this.onTap,
    required this.image,
    required this.name,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 184,
        width: 157,
        decoration: CustomThemes.decorationShadow(context),
        margin: const EdgeInsetsDirectional.only(end: 15),
        padding:
            const EdgeInsetsDirectional.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          children: [
            Image.asset(
              image,
              alignment: Alignment.center,
              height: 100,
            ),
            const Spacer(),
            Text(
              name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.labelSmall,
            )
          ],
        ),
      ),
    );
  }
}
