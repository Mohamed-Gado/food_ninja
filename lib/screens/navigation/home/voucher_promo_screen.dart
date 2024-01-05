import 'package:flutter/material.dart';
import 'package:food_ninja/models/voucher.dart';
import 'package:food_ninja/screens/navigation/home/widgets/voucher_card.dart';
import 'package:food_ninja/screens/navigation/widgets/screen_header.dart';
import 'package:food_ninja/widgets/custom_elevated_button.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';

class VoucherPromoScreen extends StatelessWidget {
  static const routeName = "VoucherPromoScreen";
  const VoucherPromoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      heightPercentageShifting: 0.15,
      widget: Column(
        children: [
          const ScreenHeader(
            title: "Voucher Promo",
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, i) {
              return Hero(
                tag: vouchers[i].id,
                child: VoucherCard(voucher: vouchers[i]),
              );
            },
            itemCount: vouchers.length,
            shrinkWrap: true,
          ),
          const Spacer(),
          CustomElevatedButton(
            onTap: () {},
            title: "Check out",
          ),
        ],
      ),
    );
  }
}
