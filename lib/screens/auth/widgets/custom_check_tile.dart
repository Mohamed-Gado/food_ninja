import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/theme/custom_themes.dart';
import 'package:food_ninja/utils/constants.dart';

class CustomCheckTile extends StatefulWidget {
  final String title;
  const CustomCheckTile({
    super.key,
    required this.title,
  });

  @override
  State<CustomCheckTile> createState() => _CustomCheckTileState();
}

class _CustomCheckTileState extends State<CustomCheckTile> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Container(
              height: 22,
              width: 22,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: CustomThemes.primaryGradient(),
              ),
              alignment: Alignment.center,
              child: selected
                  ? SvgPicture.asset(
                      Constants.check,
                    )
                  : null,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            widget.title,
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
