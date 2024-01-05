import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/models/chat.dart';
import 'package:food_ninja/theme/custom_themes.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

class VoiceCallScreen extends StatefulWidget {
  static const routeName = "VoiceCallScreen";
  const VoiceCallScreen({super.key});

  @override
  State<VoiceCallScreen> createState() => _VoiceCallScreenState();
}

class _VoiceCallScreenState extends State<VoiceCallScreen> {
  bool mute = false;

  @override
  Widget build(BuildContext context) {
    final int index = ModalRoute.of(context)!.settings.arguments as int? ?? 0;
    return ScreenBackground(
      widget: Column(
        children: [
          const Spacer(flex: 2),
          Container(
            height: 160,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  chats[index].image,
                ),
                fit: BoxFit.contain,
              ),
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 5,
              ),
            ),
          ),
          const SizedBox(height: 50),
          Text(
            chats[index].username,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 20),
          Text(
            "Ringing . . .",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const Spacer(flex: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    mute = !mute;
                  });
                },
                icon: Container(
                  height: 78,
                  width: 78,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: CustomThemes.primaryGradient(opacity: 0.08),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    mute ? Constants.volumeOff : Constants.volumeUp,
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Container(
                  height: 78,
                  width: 78,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.error,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    Constants.closeIcon,
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
