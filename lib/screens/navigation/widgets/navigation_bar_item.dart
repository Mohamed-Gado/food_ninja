import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/theme/custom_themes.dart';

class NavigationBarItem extends StatelessWidget {
  final String icon;
  final String title;
  final bool expanded;
  final Widget? hint;
  final void Function()? onTap;
  const NavigationBarItem({
    super.key,
    required this.icon,
    required this.title,
    required this.expanded,
    this.hint,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 500),
        height: 44,
        padding: expanded ? const EdgeInsets.symmetric(horizontal: 12) : null,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient:
              expanded ? CustomThemes.primaryGradient(opacity: 0.08) : null,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: expanded ? 81 : 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  icon,
                  height: 24,
                  width: 24,
                ),
                Container(
                  padding: const EdgeInsetsDirectional.only(top: 6),
                  width: expanded ? null : 0,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
