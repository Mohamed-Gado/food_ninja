import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../theme/custom_themes.dart';

class ResetPasswordMethod extends StatelessWidget {
  final String imagePath;
  final String method;
  final String methodInfo;
  const ResetPasswordMethod({
    super.key,
    required this.imagePath,
    required this.method,
    required this.methodInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      decoration: CustomThemes.decorationShadow(context),
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SvgPicture.asset(imagePath),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                method,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                methodInfo,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
