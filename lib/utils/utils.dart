import 'package:flutter/material.dart';

class Utils {
  static bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static double customHeight(
    BuildContext context, {
    bool includeTopPadding = true,
    bool includeBottomPadding = true,
  }) {
    return MediaQuery.of(context).size.height -
        (Navigator.of(context).canPop()
            ? AppBar().preferredSize.height + 14
            : 0) -
        (includeTopPadding ? 0 : MediaQuery.of(context).viewPadding.top) -
        (includeBottomPadding ? 0 : MediaQuery.of(context).viewPadding.bottom);
  }

  static Widget keyboardHandlerWrapper({
    required BuildContext context,
    required Widget child,
  }) {
    return SingleChildScrollView(
      child: SizedBox(
        height: Utils.customHeight(
          context,
          includeBottomPadding: false,
          includeTopPadding: false,
        ),
        child: child,
      ),
    );
  }
}
