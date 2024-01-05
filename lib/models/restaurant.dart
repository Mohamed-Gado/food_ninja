import 'package:food_ninja/models/menu_item.dart';
import 'package:food_ninja/models/rating.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:uuid/uuid.dart';

class Restaurant {
  String id = const Uuid().v1();
  String name;
  String image;
  String coverPhoto;
  double distance;
  double deliveryTime;
  String about;
  double rate;
  List<MenuItem> items;
  List<Rating> ratings;

  Restaurant({
    required this.name,
    required this.image,
    required this.coverPhoto,
    required this.distance,
    required this.deliveryTime,
    required this.about,
    required this.rate,
    required this.items,
    required this.ratings,
  });
}

// Dummy Restaurants Data

List<Restaurant> restaurants = [
  Restaurant(
    name: "Vegan Resto",
    image: Constants.rest1,
    coverPhoto: Constants.restaurantCover,
    distance: 19,
    deliveryTime: 12,
    about:
        "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .",
    rate: 4.8,
    items: menuItems,
    ratings: ratings,
  ),
  Restaurant(
    name: "Healthy Food",
    image: Constants.rest2,
    coverPhoto: Constants.restaurantCover,
    distance: 23,
    deliveryTime: 15,
    about:
        "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .",
    rate: 4.4,
    items: menuItems,
    ratings: ratings,
  ),
  Restaurant(
    name: "Good Food",
    image: Constants.rest3,
    coverPhoto: Constants.restaurantCover,
    distance: 8,
    deliveryTime: 4,
    about:
        "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .",
    rate: 4.5,
    items: menuItems,
    ratings: ratings,
  ),
  Restaurant(
    name: "Smart Resto",
    image: Constants.rest4,
    coverPhoto: Constants.restaurantCover,
    distance: 17,
    deliveryTime: 10,
    about:
        "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .",
    rate: 4.2,
    items: menuItems,
    ratings: ratings,
  ),
  Restaurant(
    name: "Vegan Resto",
    image: Constants.rest5,
    coverPhoto: Constants.restaurantCover,
    distance: 28,
    deliveryTime: 15,
    about:
        "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .",
    rate: 4.9,
    items: menuItems,
    ratings: ratings,
  ),
  Restaurant(
    name: "Healthy Resto",
    image: Constants.rest6,
    coverPhoto: Constants.restaurantCover,
    distance: 23,
    deliveryTime: 11,
    about:
        "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .",
    rate: 3.6,
    items: menuItems,
    ratings: ratings,
  ),
];
