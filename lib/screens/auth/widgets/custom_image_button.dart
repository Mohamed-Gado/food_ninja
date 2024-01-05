import 'package:flutter/material.dart';
import 'package:food_ninja/utils/utils.dart';

import '../../../theme/custom_themes.dart';

class CustomImageButton extends StatelessWidget {
  final String logo;
  final String? title;
  final void Function()? onTap;
  const CustomImageButton({
    super.key,
    required this.logo,
    this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = Utils.isDark(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: title != null ? 129 : 73,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: CustomThemes.decorationShadow(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logo,
              color: isDark && title == null ? Colors.white : null,
              width: 86,
              height: 60,
            ),
            if (title != null)
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  title!,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
