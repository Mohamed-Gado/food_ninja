import 'package:flutter/material.dart';
import 'package:food_ninja/models/voucher.dart';

class VoucherCard extends StatelessWidget {
  final Voucher voucher;
  const VoucherCard({
    super.key,
    required this.voucher,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(colors: voucher.colors),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      child: Stack(
        children: [
          Stack(
            children: [
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 63,
                        width: 126,
                        margin: const EdgeInsetsDirectional.only(
                          start: 30,
                        ),
                        padding: const EdgeInsetsDirectional.only(
                          start: 30,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    child: Container(
                      height: 14,
                      width: 14,
                      margin: const EdgeInsetsDirectional.only(start: 20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    bottom: 80,
                    start: 20,
                    child: Container(
                      height: 14,
                      width: 14,
                      margin: const EdgeInsetsDirectional.only(start: 20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    bottom: 40,
                    start: 0,
                    child: Container(
                      height: 7,
                      width: 7,
                      margin: const EdgeInsetsDirectional.only(start: 20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    top: 8,
                    end: 35,
                    child: Container(
                      height: 7,
                      width: 7,
                      margin: const EdgeInsetsDirectional.only(start: 20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                voucher.image,
                width: double.infinity,
                alignment: AlignmentDirectional.centerStart,
              ),
            ],
          ),
          PositionedDirectional(
            end: 20,
            bottom: 0,
            top: 0,
            child: SizedBox(
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    voucher.title,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      minimumSize: const Size(82, 32),
                      padding: const EdgeInsets.all(0),
                    ),
                    child: const Text("Buy Now"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
