import 'package:flutter/material.dart';
import 'package:food_ninja/models/restaurant.dart';
import 'package:food_ninja/screens/navigation/home/menu_item_details_screen.dart';
import 'package:food_ninja/screens/navigation/widgets/draggable_widget.dart';
import 'package:food_ninja/screens/navigation/home/widgets/food_detais.dart';
import 'package:food_ninja/screens/navigation/home/widgets/rating_card.dart';
import 'package:food_ninja/utils/constants.dart';
import 'widgets/vertical_card.dart';
import 'widgets/section_header.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  static const routeName = "RestaurantDetailsScreen";
  const RestaurantDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int index = ModalRoute.of(context)!.settings.arguments as int? ?? 0;
    final restaurant = restaurants[index];
    return DraggableWidget(
      coverPhoto: restaurant.coverPhoto,
      body: [
        FoodDetails(
          body: [
            const Padding(
              padding: EdgeInsetsDirectional.only(start: 10, end: 30),
              child: SectionHeader(title: "Popular Menu"),
            ),
            SizedBox(
              height: 204,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return VerticalCard(
                    image: restaurant.items[index].image,
                    name: restaurant.items[index].name,
                    subTitle: "${restaurant.items[index].price}\$",
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        MenuItemDetailsScreen.routeName,
                        arguments: index,
                      );
                    },
                  );
                },
                itemCount: restaurant.items.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 10),
                clipBehavior: Clip.none,
              ),
            ),
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
                  rate: restaurant.ratings[index],
                );
              },
              itemCount: restaurant.ratings.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsetsDirectional.only(end: 20),
              clipBehavior: Clip.none,
            ),
          ],
          name: restaurant.name,
          firstInfoIcon: Constants.mapPin,
          firstInfo: "${restaurant.distance} Km",
          secondInfoIcon: Constants.ratingStar,
          secondInfo: "${restaurant.rate} Rating",
          description: restaurant.about,
        ),
      ],
    );
  }
}
