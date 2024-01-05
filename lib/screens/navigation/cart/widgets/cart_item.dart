import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/models/menu_item.dart';
import 'package:food_ninja/theme/custom_themes.dart';
import 'package:food_ninja/utils/constants.dart';

class CartItem extends StatefulWidget {
  final MenuItem item;
  const CartItem({
    super.key,
    required this.item,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      width: double.infinity,
      decoration: CustomThemes.decorationShadow(context),
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsetsDirectional.only(end: 16),
            height: 62,
            width: 62,
            decoration: CustomThemes.decorationShadow(context).copyWith(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(
                  widget.item.image,
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
                  widget.item.name,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  widget.item.description,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  "\$${widget.item.price}",
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                )
              ],
            ),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  if (count < 2) {
                    return;
                  }
                  setState(() {
                    count--;
                  });
                },
                child: Container(
                  height: 26,
                  width: 26,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: CustomThemes.primaryGradient(opacity: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: SvgPicture.asset(
                    Constants.minus,
                    width: 12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(count.toString()),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    count++;
                  });
                },
                child: Container(
                  height: 26,
                  width: 26,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: CustomThemes.primaryGradient(),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: SvgPicture.asset(
                    Constants.plus,
                    width: 12,
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
