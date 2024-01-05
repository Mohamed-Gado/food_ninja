import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/theme/custom_themes.dart';

class CustomTextField extends StatefulWidget {
  final String? hint;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? iconPath;
  final double height;
  final double verticalMargin;
  final Widget? suffixIcon;
  final BoxConstraints? suffixIconConstraints;
  final Color? iconColor;
  final Color? filledColor;
  final Color? hintColor;
  final bool requiredShadow;
  const CustomTextField({
    super.key,
    this.hint,
    this.keyboardType,
    this.obscureText = false,
    this.iconPath,
    this.height = 57,
    this.verticalMargin = 5,
    this.suffixIcon,
    this.suffixIconConstraints,
    this.iconColor,
    this.filledColor,
    this.hintColor,
    this.requiredShadow = true,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool obscureText;
  @override
  void initState() {
    obscureText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          CustomThemes.decorationShadow(context, shadow: widget.requiredShadow),
      margin: EdgeInsets.symmetric(vertical: widget.verticalMargin),
      height: widget.height,
      child: TextField(
        keyboardType: widget.keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(color: widget.hintColor),
          filled: widget.filledColor != null,
          fillColor: widget.filledColor,
          enabledBorder: CustomThemes.textFieldBorder,
          border: CustomThemes.textFieldBorder,
          contentPadding: const EdgeInsetsDirectional.fromSTEB(24, 24, 12, 16),
          prefixIconConstraints: BoxConstraints.tight(const Size(42, 42)),
          suffixIconConstraints: widget.suffixIconConstraints ??
              BoxConstraints.tight(const Size(42, 42)),
          suffixIcon: widget.obscureText
              ? InkWell(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: Center(
                      child: SvgPicture.asset(
                    obscureText ? Constants.hide : Constants.show,
                    width: 20,
                    height: 16,
                  )),
                )
              : widget.suffixIcon,
          prefixIcon: widget.iconPath != null
              ? Center(
                  child: SvgPicture.asset(
                    widget.iconPath!,
                    width: 24,
                    height: 24,
                    colorFilter: widget.iconColor != null
                        ? ColorFilter.mode(widget.iconColor!, BlendMode.srcIn)
                        : null,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
