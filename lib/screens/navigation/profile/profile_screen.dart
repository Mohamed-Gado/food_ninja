import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/screens/navigation/home/menu_item_details_screen.dart';
import 'package:food_ninja/screens/navigation/profile/widgets/favorite_item.dart';
import 'package:food_ninja/screens/navigation/widgets/draggable_widget.dart';
import 'package:food_ninja/theme/custom_themes.dart';
import 'package:food_ninja/utils/constants.dart';
import '../../../models/menu_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableWidget(
      coverPhoto: Constants.profilePhoto,
      body: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                width: 111,
                height: 34,
                margin: const EdgeInsetsDirectional.only(start: 7, bottom: 20),
                decoration: BoxDecoration(
                    color:
                        Theme.of(context).colorScheme.tertiary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(18.5)),
                child: Text(
                  "Member Gold",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: 7, end: 18, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Anam Wusono",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(fontSize: 27),
                        ),
                        Text("anamwp66@gmail.com",
                            style: Theme.of(context).textTheme.labelSmall),
                      ],
                    ),
                    SvgPicture.asset(Constants.edit)
                  ],
                ),
              ),
              Container(
                height: 64,
                alignment: AlignmentDirectional.centerStart,
                decoration: CustomThemes.decorationShadow(context),
                padding: const EdgeInsetsDirectional.only(start: 21),
                child: Row(
                  children: [
                    SvgPicture.asset(Constants.voucher),
                    const SizedBox(width: 16),
                    Text(
                      "You Have 3 Vouchers",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Favorite",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(MenuItemDetailsScreen.routeName);
                    },
                    child: FavoriteItem(
                      item: menuItems[menuItems.length - index - 1],
                    ),
                  );
                },
                itemCount: menuItems.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                clipBehavior: Clip.none,
                padding: EdgeInsets.zero,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
