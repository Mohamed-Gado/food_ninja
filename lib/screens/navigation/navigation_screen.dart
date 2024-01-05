import 'package:flutter/material.dart';
import 'package:food_ninja/screens/navigation/home/home_screen.dart';
import 'package:food_ninja/screens/navigation/widgets/navigation_bar_item.dart';
import 'package:food_ninja/theme/custom_themes.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';
import 'cart/cart_screen.dart';
import 'chat/chat_screen.dart';
import 'profile/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  static const routeName = "NavigationScreen";
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentPage = 0;
  List<Widget> screens = const [
    HomeScreen(),
    ProfileScreen(),
    CartScreen(),
    ChatScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      safeArea: currentPage != 1,
      ignoreAppBar: true,
      heightPercentageShifting: 0.15,
      horizontalPadding: 0,
      widget: screens[currentPage],
      bottomNavigationBar: Container(
        height: 74,
        alignment: Alignment.center,
        decoration: CustomThemes.decorationShadow(context),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).padding.bottom,
          left: 10,
          right: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavigationBarItem(
              icon: Constants.home,
              title: "Home",
              expanded: currentPage == 0,
              onTap: () {
                setState(() {
                  currentPage = 0;
                });
              },
            ),
            NavigationBarItem(
              icon: Constants.profile,
              title: "Profile",
              expanded: currentPage == 1,
              onTap: () {
                setState(() {
                  currentPage = 1;
                });
              },
            ),
            NavigationBarItem(
              icon: Constants.cart,
              title: "Cart",
              expanded: currentPage == 2,
              onTap: () {
                setState(() {
                  currentPage = 2;
                });
              },
            ),
            NavigationBarItem(
              icon: Constants.bigMessage,
              title: "Chat",
              expanded: currentPage == 3,
              onTap: () {
                setState(() {
                  currentPage = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
