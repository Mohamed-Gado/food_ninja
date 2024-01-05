import 'package:flutter/material.dart';
import 'package:food_ninja/theme/custom_colors.dart';
import 'package:food_ninja/utils/constants.dart';
import 'package:uuid/uuid.dart';

class Voucher {
  String id = const Uuid().v1();
  String title;
  String image;
  List<Color> colors;

  Voucher({
    required this.title,
    required this.image,
    required this.colors,
  });
}

// Dummy Data

List<Voucher> vouchers = [
  Voucher(
    title: "Special Deal For October",
    image: Constants.voucher1,
    colors: [
      CustomColors.primary,
      CustomColors.onPrimary,
    ],
  ),
  Voucher(
    title: "Special Deal For October",
    image: Constants.voucher2,
    colors: [
      const Color(0xFFE9F7BA),
      const Color(0xFFE9F7BA),
    ],
  ),
];
