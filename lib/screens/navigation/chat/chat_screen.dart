import 'package:flutter/material.dart';
import 'package:food_ninja/models/chat.dart';
import 'package:food_ninja/screens/navigation/chat/chat_details_screen.dart';
import 'package:food_ninja/screens/navigation/chat/widgets/chat_item.dart';
import 'package:food_ninja/screens/navigation/widgets/screen_header.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const ScreenHeader(title: 'Chat'),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            itemCount: chats.length,
            itemBuilder: (ctx, i) {
              return ChatItem(
                chat: chats[i],
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(ChatDetailsScreen.routeName, arguments: i);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
