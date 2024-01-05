import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/utils/utils.dart';
import 'package:food_ninja/theme/custom_colors.dart';

class ScreenBackground extends StatelessWidget {
  final Widget widget;
  final double heightPercentageShifting;
  final double horizontalPadding;
  final Widget? bottomNavigationBar;
  final bool safeArea;
  final bool ignoreAppBar;
  const ScreenBackground({
    super.key,
    required this.widget,
    this.heightPercentageShifting = 0,
    this.horizontalPadding = 25,
    this.bottomNavigationBar,
    this.safeArea = true,
    this.ignoreAppBar = false,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = Utils.isDark(context);
    bool canPop = Navigator.of(context).canPop();
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: -MediaQuery.of(context).size.height * heightPercentageShifting,
            child: Stack(
              children: [
                SvgPicture.asset(
                  Constants.pattern,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: isDark
                          ? [
                              CustomColors.darkBackground,
                              Colors.black.withOpacity(0),
                            ]
                          : [
                              CustomColors.lightBackground,
                              Colors.white.withOpacity(0),
                            ],
                    ),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Scaffold(
              bottomNavigationBar: bottomNavigationBar,
              appBar: canPop && !ignoreAppBar
                  ? AppBar(
                      leadingWidth: 95,
                      leading: canPop
                          ? Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: SvgPicture.asset(
                                  Constants.iconBack,
                                  height: 45,
                                  width: 45,
                                ),
                              ),
                            )
                          : null,
                    )
                  : null,
              backgroundColor: Colors.transparent,
              body: SafeArea(
                top: safeArea,
                left: safeArea,
                right: safeArea,
                bottom: safeArea,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: widget,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
