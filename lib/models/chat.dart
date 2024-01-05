import 'package:food_ninja/utils/constants.dart';
import 'package:uuid/uuid.dart';

class Chat {
  String id = const Uuid().v1();
  String username;
  String lastMessage;
  String date;
  String image;

  Chat({
    required this.username,
    required this.lastMessage,
    required this.date,
    required this.image,
  });
}

// debug dummy data

List<Chat> chats = [
  Chat(
    username: "Anamwp",
    lastMessage: "Your Order Just Arrived!",
    date: "20.00",
    image: Constants.chat1,
  ),
  Chat(
    username: "Guy Hawkins",
    lastMessage: "Your Order Just Arrived!",
    date: "20.00",
    image: Constants.chat2,
  ),
  Chat(
    username: "Leslie Alexander",
    lastMessage: "Your Order Just Arrived!",
    date: "20.00",
    image: Constants.chat3,
  ),
];
