import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/models/chat.dart';
import 'package:food_ninja/screens/navigation/chat/voice_call_screen.dart';
import 'package:food_ninja/screens/navigation/chat/widgets/message.dart';
import 'package:food_ninja/theme/custom_colors.dart';
import 'package:food_ninja/theme/custom_themes.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/widgets/custom_text_field.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

class ChatDetailsScreen extends StatelessWidget {
  static const routeName = "ChatDetailsScreen";
  const ChatDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int index = ModalRoute.of(context)!.settings.arguments as int? ?? 0;
    List<String> messages = [
      "Okay I'm waiting  👍",
      "Okay, wait a minute 👍",
      "Okay, for what level of spiciness?",
      "Just to order",
    ];
    return ScreenBackground(
      widget: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            decoration: CustomThemes.decorationShadow(context),
            height: 93,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Hero(
                    tag: chats[index].id,
                    child: Image.asset(chats[index].image),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Hero(
                        tag: chats[index].username,
                        child: Text(
                          chats[index].username,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: CustomColors.primary,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "Online",
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(VoiceCallScreen.routeName, arguments: index);
                  },
                  child: Container(
                    margin: const EdgeInsetsDirectional.only(end: 20),
                    decoration: CustomThemes.decorationShadow(context),
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    child: SvgPicture.asset(
                      Constants.call,
                      height: 18,
                      width: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 30),
              reverse: true,
              itemCount: 4,
              itemBuilder: (context, i) {
                return Message(
                  fromMe: i % 2 != 0,
                  message: messages[i],
                );
              },
            ),
          ),
          CustomTextField(
            verticalMargin: 0,
            height: 74,
            suffixIconConstraints: BoxConstraints.tight(const Size(74, 74)),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                Constants.send,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
