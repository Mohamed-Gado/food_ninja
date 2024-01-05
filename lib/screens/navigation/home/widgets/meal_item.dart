import 'package:flutter/material.dart';
import 'package:food_ninja/models/menu_item.dart';
import '../../../../theme/custom_themes.dart';

class MealItem extends StatelessWidget {
  final MenuItem item;
  final void Function()? onTap;
  const MealItem({
    super.key,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 87,
        width: double.infinity,
        decoration: CustomThemes.decorationShadow(context),
        padding: const EdgeInsetsDirectional.only(start: 12, end: 20),
        margin: const EdgeInsetsDirectional.only(bottom: 15),
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
                ],
              ),
            ),
            const SizedBox(width: 12),
            Text(
              "${item.price}\$",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
