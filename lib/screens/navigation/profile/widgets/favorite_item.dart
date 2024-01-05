import 'package:flutter/material.dart';
import 'package:food_ninja/models/menu_item.dart';
import 'package:food_ninja/theme/custom_themes.dart';
import 'package:food_ninja/widgets/custom_elevated_button.dart';

class FavoriteItem extends StatelessWidget {
  final MenuItem item;
  const FavoriteItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(bottom: 20),
      decoration: CustomThemes.decorationShadow(context),
      height: 103,
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 14),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsetsDirectional.only(end: 16),
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(
                  item.image,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  item.description,
                  style: Theme.of(context).textTheme.labelSmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "${item.price}\$",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          CustomElevatedButton(
            onTap: () {},
            title: "Buy Again",
            height: 30,
            width: 85,
            textSize: 12,
          ),
          const SizedBox(width: 3),
        ],
      ),
    );
  }
}
