import 'package:ecommer_app/theme.dart';
import 'package:flutter/material.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
          color: bgColor4, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Terrex Urban Low",
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "\$143,98",
                  style: priceTextStyle,
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/button_wishlist_blue.png',
            width: 34,
          )
        ],
      ),
    );
  }
}
