import 'package:food_ninja/utils/constants.dart';
import 'package:uuid/uuid.dart';

class Rating {
  String id = const Uuid().v1();
  String username;
  String userImage;
  String date;
  String comment;
  double rate;

  Rating({
    required this.username,
    required this.userImage,
    required this.date,
    required this.comment,
    required this.rate,
  });
}

// Dummy Restaurants Ratings

List<Rating> ratings = [
  Rating(
    username: "Anamwp",
    userImage: Constants.chat1,
    date: "12 April 2021",
    comment:
        "This Is great, So delicious! You Must Here, With Your family . . ",
    rate: 5,
  ),
  Rating(
    username: "Guy Hawkins",
    userImage: Constants.chat2,
    date: "12 April 2021",
    comment:
        "This Is great, So delicious! You Must Here, With Your family . . ",
    rate: 5,
  ),
  Rating(
    username: "Leslie Alexander",
    userImage: Constants.chat3,
    date: "12 April 2021",
    comment:
        "This Is great, So delicious! You Must Here, With Your family . . ",
    rate: 5,
  ),
];
