import 'package:ecommer_app/theme.dart';
import 'package:ecommer_app/views/pages/detail_product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailProduct()));
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(right: defaultMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryTextColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: 215,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image_shoes.png'),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hiking',
                    style: subtitleTextStyle.copyWith(
                        fontSize: 12, color: transfarans, fontWeight: reguler),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'COURT VISION 2.0',
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "\$58,67",
                    style: priceTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
