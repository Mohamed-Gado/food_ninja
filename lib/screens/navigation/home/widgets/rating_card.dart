import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/models/rating.dart';
import 'package:food_ninja/theme/custom_themes.dart';
import 'package:food_ninja/utils/constants.dart';

class RatingCard extends StatelessWidget {
  final Rating rate;
  const RatingCard({
    super.key,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: CustomThemes.decorationShadow(context),
      padding: const EdgeInsetsDirectional.only(
          start: 10, end: 20, top: 11, bottom: 19),
      height: 128,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsetsDirectional.only(end: 16),
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(
                  rate.userImage,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          rate.username,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          rate.date,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                    Container(
                      height: 33,
                      width: 53,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.5),
                        gradient: CustomThemes.primaryGradient(
                          opacity: 0.1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Constants.star,
                            width: 16,
                            colorFilter: ColorFilter.mode(
                              Theme.of(context).colorScheme.primary,
                              BlendMode.srcIn,
                            ),
                            alignment: Alignment.topCenter,
                          ),
                          const SizedBox(width: 2),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text(
                              rate.rate.toStringAsFixed(0),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    height: 1,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 250),
                  child: Text(rate.comment,
                      style: Theme.of(context).textTheme.titleSmall),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
