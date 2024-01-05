import 'package:flutter/material.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/widgets/custom_elevated_button.dart';

class ProcessCompleted extends StatelessWidget {
  final String processDescription;
  final String btnTitle;
  final void Function() onTap;
  const ProcessCompleted({
    super.key,
    required this.processDescription,
    required this.btnTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Spacer(),
          Image.asset(
            Constants.done,
            width: 162,
          ),
          const SizedBox(height: 33),
          Text(
            "Congrats!",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 12),
          Text(
            processDescription,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Spacer(flex: 2),
          CustomElevatedButton(
            onTap: onTap,
            title: btnTitle,
            width: 157,
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
