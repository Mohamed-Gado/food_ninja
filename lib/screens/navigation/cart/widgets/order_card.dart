import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:food_ninja/utils/utils.dart';
import '../../../../theme/custom_colors.dart';

class OrderCard extends StatelessWidget {
  final void Function()? onPressed;
  const OrderCard({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = Utils.isDark(context);
    return Container(
      height: 206,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(22),
        boxShadow: isDark
            ? []
            : [
                BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  color: CustomColors.shadowColor.withOpacity(0.07),
                ),
              ],
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: SvgPicture.asset(
              Constants.pattern,
              fit: BoxFit.cover,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
            child: Column(
              children: [
                const OrderDetailsRow(
                  title: "Sub-Total",
                  info: "120\$",
                ),
                const OrderDetailsRow(
                  title: "Delivery Charge",
                  info: "10\$",
                ),
                const OrderDetailsRow(
                  title: "Discount",
                  info: "20\$",
                ),
                const Spacer(),
                OrderDetailsRow(
                  title: "Total",
                  info: "150\$",
                  textStyle: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: CustomColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                    minimumSize: const Size(
                      double.infinity,
                      57,
                    ),
                  ),
                  child: const Text("Place My Order"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrderDetailsRow extends StatelessWidget {
  final String title;
  final String info;
  final TextStyle? textStyle;
  const OrderDetailsRow({
    Key? key,
    required this.title,
    required this.info,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: textStyle ?? Theme.of(context).textTheme.displaySmall,
          ),
          Text(
            info,
            style: textStyle ?? Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}
