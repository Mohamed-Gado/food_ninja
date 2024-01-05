import 'package:food_ninja/models/rating.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:uuid/uuid.dart';

class MenuItem {
  String id = const Uuid().v1();
  String name;
  String image;
  String coverImage;
  int price;
  double rate;
  int ordersCount;
  String description;
  List<Rating> ratings;

  MenuItem({
    required this.name,
    required this.image,
    required this.coverImage,
    required this.rate,
    required this.ordersCount,
    required this.description,
    required this.ratings,
    required this.price,
  });
}

// Dummy Menu Items

List<MenuItem> menuItems = [
  MenuItem(
    name: "Specy fresh crab",
    image: Constants.slice,
    coverImage: Constants.menuItemCover,
    rate: 4.8,
    ordersCount: 2000,
    description:
        "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.\n\n• Strowberry\n• Cream\n• wheat\n\nNulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt.",
    ratings: ratings,
    price: 12,
  ),
  MenuItem(
    name: "Specy fresh crab",
    image: Constants.meat,
    coverImage: Constants.menuItemCover,
    rate: 4.8,
    ordersCount: 2000,
    description:
        "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.\n\n• Strowberry\n• Cream\n• wheat\n\nNulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt.",
    ratings: ratings,
    price: 17,
  ),
  MenuItem(
    name: "Specy fresh crab",
    image: Constants.pasta,
    coverImage: Constants.menuItemCover,
    rate: 4.8,
    ordersCount: 2000,
    description:
        "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.\n\n• Strowberry\n• Cream\n• wheat\n\nNulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt.",
    ratings: ratings,
    price: 16,
  ),
  MenuItem(
    name: "Specy fresh crab",
    image: Constants.salad,
    coverImage: Constants.menuItemCover,
    rate: 4.8,
    ordersCount: 2000,
    description:
        "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.\n\n• Strowberry\n• Cream\n• wheat\n\nNulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt.",
    ratings: ratings,
    price: 20,
  ),
  MenuItem(
    name: "Specy fresh crab",
    image: Constants.iceCream,
    coverImage: Constants.menuItemCover,
    rate: 4.8,
    ordersCount: 2000,
    description:
        "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.\n\n• Strowberry\n• Cream\n• wheat\n\nNulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt.",
    ratings: ratings,
    price: 11,
  ),
];
