import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/models/menu_item.dart';
import 'package:food_ninja/screens/navigation/cart/confirm_order_screen.dart';
import 'package:food_ninja/screens/navigation/cart/widgets/cart_item.dart';
import 'package:food_ninja/screens/navigation/cart/widgets/order_card.dart';
import 'package:food_ninja/screens/navigation/widgets/screen_header.dart';
import 'package:food_ninja/theme/custom_colors.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<MenuItem> items = [...menuItems.sublist(1, 4)];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsetsDirectional.only(start: 25, top: 10),
          child: ScreenHeader(title: "Order details"),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (ctx, i) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Stack(
                  children: [
                    // Container(
                    //   height: 103,
                    //   width: double.infinity,
                    //   alignment: AlignmentDirectional.centerEnd,
                    //   padding: const EdgeInsetsDirectional.only(end: 27),
                    //   decoration: ShapeDecoration(
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(16)),
                    //     color:
                    //         Utils.isDark(context) ? null : CustomColors.golden,
                    //   ),
                    // ),
                    SwipeableTile(
                      borderRadius: 16,
                      key: Key(items[i].id),
                      onSwiped: (dir) {
                        setState(() {
                          items.remove(items[i]);
                        });
                      },
                      direction: SwipeDirection.endToStart,
                      backgroundBuilder: (ctx, dir, progress) {
                        return Container(
                          alignment: AlignmentDirectional.centerEnd,
                          padding: const EdgeInsetsDirectional.only(end: 27),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: CustomColors.golden,
                          ),
                          child: SvgPicture.asset(
                            Constants.trash,
                            height: 24,
                            width: 24,
                          ),
                        );
                      },
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          Container(
                            height: 103,
                            width: double.infinity,
                            alignment: AlignmentDirectional.centerEnd,
                            padding: const EdgeInsetsDirectional.only(end: 27),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: CustomColors.darkBackground,
                            ),
                          ),
                          CartItem(
                            item: menuItems[i],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: items.length,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          ),
        ),
        Hero(
          tag: "OrderCard",
          child: OrderCard(
            onPressed: () {
              Navigator.of(context).pushNamed(ConfirmOrderScreen.routeName);
            },
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
