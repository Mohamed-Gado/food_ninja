import 'package:flutter/material.dart';
import 'package:food_ninja/models/menu_item.dart';
import 'package:food_ninja/screens/navigation/widgets/draggable_widget.dart';
import 'package:food_ninja/screens/navigation/home/widgets/food_detais.dart';
import 'package:food_ninja/screens/navigation/home/widgets/rating_card.dart';
import 'package:food_ninja/widgets/custom_elevated_button.dart';

import '../../../utils/constants.dart';
import 'widgets/section_header.dart';

class MenuItemDetailsScreen extends StatelessWidget {
  static const routeName = "MenuItemDetailsScreen";
  const MenuItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int index = ModalRoute.of(context)!.settings.arguments as int? ?? 0;
    final menuItem = menuItems[index];
    return Scaffold(
      body: Stack(
        children: [
          DraggableWidget(
            coverPhoto: menuItem.coverImage,
            body: [
              FoodDetails(
                body: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: SectionHeader(
                      title: "Testimonials",
                      viewMore: false,
                    ),
                  ),
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return RatingCard(
                        rate: menuItem.ratings[index],
                      );
                    },
                    itemCount: menuItem.ratings.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding:
                        const EdgeInsetsDirectional.only(end: 20, bottom: 100),
                    clipBehavior: Clip.none,
                  ),
                ],
                name: menuItem.name,
                firstInfo: "${menuItem.rate} Rating",
                secondInfo: "+${menuItem.ordersCount} Orders",
                description: menuItem.description,
                firstInfoIcon: Constants.ratingStar,
                secondInfoIcon: Constants.shoppingBag,
              ),
            ],
          ),
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: CustomElevatedButton(
              onTap: () {},
              title: "Add To Cart",
            ),
          ),
        ],
      ),
    );
  }
}
