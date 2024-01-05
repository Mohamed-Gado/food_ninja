import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../theme/custom_colors.dart';
import '../../../../theme/custom_themes.dart';
import '../../../../utils/constants.dart';

class FoodDetails extends StatelessWidget {
  final List<Widget> body;
  final String name;
  final String firstInfoIcon;
  final String secondInfoIcon;
  final String firstInfo;
  final String secondInfo;
  final String description;
  const FoodDetails({
    super.key,
    required this.body,
    required this.name,
    required this.firstInfoIcon,
    required this.secondInfoIcon,
    required this.firstInfo,
    required this.secondInfo,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10, end: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 34,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.5),
                        gradient: CustomThemes.primaryGradient(opacity: 0.1),
                      ),
                      child: Text(
                        "Popular",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: CustomThemes.primaryGradient(opacity: 0.1)),
                      height: 34,
                      width: 34,
                      alignment: Alignment.center,
                      child: SvgPicture.asset(Constants.location),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: CustomColors.red.withOpacity(0.1)),
                      height: 34,
                      width: 34,
                      alignment: Alignment.center,
                      child: SvgPicture.asset(Constants.heart),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    name,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(fontSize: 27),
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      firstInfoIcon,
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      firstInfo,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    const SizedBox(width: 20),
                    SvgPicture.asset(
                      secondInfoIcon,
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      secondInfo,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    description,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          ...body
        ],
      ),
    );
  }
}
