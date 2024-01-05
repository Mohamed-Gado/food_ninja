import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/models/menu_item.dart';
import 'package:food_ninja/models/restaurant.dart';
import 'package:food_ninja/models/voucher.dart';
import 'package:food_ninja/screens/navigation/home/menu_item_details_screen.dart';
import 'package:food_ninja/screens/navigation/home/notifications/notifications_screen.dart';
import 'package:food_ninja/screens/navigation/home/restaurant_details_screen.dart';
import 'package:food_ninja/screens/navigation/home/voucher_promo_screen.dart';
import 'package:food_ninja/screens/navigation/home/widgets/meal_item.dart';
import 'package:food_ninja/screens/navigation/home/widgets/vertical_card.dart';
import 'package:food_ninja/screens/navigation/home/widgets/section_header.dart';
import 'package:food_ninja/screens/navigation/home/widgets/voucher_card.dart';
import 'package:food_ninja/screens/navigation/widgets/screen_header.dart';
import 'package:food_ninja/theme/custom_themes.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/utils/utils.dart';
import 'package:food_ninja/widgets/custom_text_field.dart';

import '../../../theme/custom_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Utils.isDark(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            ScreenHeader(
              title: "Find Your\nFavorite Food",
              widget: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(NotificationsScreen.routeName);
                },
                child: Container(
                  decoration: CustomThemes.decorationShadow(context),
                  height: 45,
                  width: 45,
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      SvgPicture.asset(Constants.notification),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: CustomColors.error,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    height: 50,
                    requiredShadow: false,
                    hint: "What do you want to order?",
                    iconPath: Constants.search,
                    filledColor:
                        isDark ? null : CustomColors.golden.withOpacity(0.1),
                    hintColor: isDark
                        ? null
                        : Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.4),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: CustomColors.golden.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      Constants.filter,
                      height: 24,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(VoucherPromoScreen.routeName);
              },
              child: Hero(
                tag: vouchers.first.id,
                child: VoucherCard(
                  voucher: vouchers.first,
                ),
              ),
            ),
            const SectionHeader(title: "Nearest Restaurant"),
            SizedBox(
              height: 204,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return VerticalCard(
                    image: restaurants[index].image,
                    name: restaurants[index].name,
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        RestaurantDetailsScreen.routeName,
                        arguments: index,
                      );
                    },
                    subTitle: "${restaurants[index].deliveryTime} Mins",
                  );
                },
                itemCount: restaurants.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 10),
                clipBehavior: Clip.none,
              ),
            ),
            const SectionHeader(title: "Popular Menu"),
            ListView.builder(
              itemBuilder: (context, index) {
                return MealItem(
                  item: menuItems[index],
                  onTap: () {
                    Navigator.of(context).pushNamed(
                        MenuItemDetailsScreen.routeName,
                        arguments: index);
                  },
                );
              },
              itemCount: menuItems.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 10),
              clipBehavior: Clip.none,
            ),
          ],
        ),
      ),
    );
  }
}
