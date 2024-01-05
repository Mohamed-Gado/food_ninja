import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/theme/custom_colors.dart';
import 'package:food_ninja/theme/custom_themes.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/utils/utils.dart';
import 'package:food_ninja/widgets/custom_elevated_button.dart';
import 'package:food_ninja/widgets/custom_text_field.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

class Rate extends StatefulWidget {
  final String image;
  final String title;
  final String hint;
  final void Function() onSubmit;
  final void Function() onSkip;
  final bool imageEffects;
  const Rate({
    super.key,
    required this.image,
    required this.title,
    required this.hint,
    required this.onSubmit,
    required this.onSkip,
    this.imageEffects = false,
  });

  @override
  State<Rate> createState() => _RateState();
}

class _RateState extends State<Rate> {
  int rate = 3;
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      widget: Utils.keyboardHandlerWrapper(
        context: context,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: widget.imageEffects ? 134 : 190,
                  width: widget.imageEffects ? 134 : 190,
                  margin: widget.imageEffects
                      ? const EdgeInsetsDirectional.only(
                          top: 25,
                          end: 10,
                          start: 10,
                        )
                      : null,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 5,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        widget.image,
                      ),
                      fit: widget.imageEffects ? BoxFit.contain : BoxFit.cover,
                    ),
                  ),
                ),
                if (widget.imageEffects)
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                if (widget.imageEffects)
                  PositionedDirectional(
                    end: 0,
                    top: 20,
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                if (widget.imageEffects)
                  PositionedDirectional(
                    start: 5,
                    bottom: 15,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        gradient: CustomThemes.primaryGradient(),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                if (widget.imageEffects)
                  PositionedDirectional(
                    end: 10,
                    bottom: 5,
                    child: Container(
                      height: 4,
                      width: 4,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 50),
            Text(
              widget.title,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Text(
              widget.hint,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 30),
            RatingBarIndicator(
              direction: Axis.horizontal,
              unratedColor: CustomColors.golden.withOpacity(0.3),
              itemSize: 40,
              itemCount: 5,
              itemPadding: const EdgeInsets.all(10),
              itemBuilder: (context, i) => GestureDetector(
                onTap: () {
                  setState(() {
                    rate = i + 1;
                  });
                },
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: SvgPicture.asset(
                        Constants.star,
                      ),
                    ),
                    if (i + 1 == rate)
                      PositionedDirectional(
                        end: 4,
                        top: 2,
                        child: Container(
                          height: 2,
                          width: 2,
                          decoration: const BoxDecoration(
                            color: CustomColors.golden,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    if (i + 1 == rate)
                      PositionedDirectional(
                        start: 0,
                        bottom: 8,
                        child: Container(
                          height: 3,
                          width: 3,
                          decoration: const BoxDecoration(
                            color: CustomColors.golden,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    if (i == rate)
                      PositionedDirectional(
                        bottom: 0,
                        end: 0,
                        start: 0,
                        child: Container(
                          height: 1,
                          width: 1,
                          decoration: const BoxDecoration(
                            color: CustomColors.golden,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    if (i + 1 == rate)
                      PositionedDirectional(
                        start: 5,
                        top: 5,
                        child: Container(
                          height: 1,
                          width: 1,
                          decoration: const BoxDecoration(
                            color: CustomColors.golden,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              rating: rate.toDouble(),
            ),
            const SizedBox(height: 50),
            const CustomTextField(
              iconPath: Constants.editIcon,
              hint: "Leave feedback",
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: CustomElevatedButton(
                    onTap: widget.onSubmit,
                    title: "Submit",
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: GestureDetector(
                    onTap: widget.onSkip,
                    child: Container(
                      alignment: Alignment.center,
                      height: 57,
                      decoration: CustomThemes.decorationShadow(context),
                      child: Text(
                        "Skip",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
