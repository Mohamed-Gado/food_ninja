import 'package:flutter/material.dart';
import 'package:food_ninja/models/chat.dart';
import 'package:food_ninja/theme/custom_themes.dart';

class ChatItem extends StatelessWidget {
  final Chat chat;
  final void Function()? onTap;
  const ChatItem({
    super.key,
    required this.chat,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: CustomThemes.decorationShadow(context),
        height: 81,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hero(
                tag: chat.id,
                child: Image.asset(chat.image),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                        tag: chat.username,
                        child: Text(
                          chat.username,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(end: 12),
                        child: Text(
                          chat.date,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    chat.lastMessage,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
