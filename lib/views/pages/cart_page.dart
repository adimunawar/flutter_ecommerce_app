import 'package:ecommer_app/theme.dart';
import 'package:ecommer_app/views/pages/checkout_page.dart';
import 'package:ecommer_app/views/widgets/cart_card.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          'Your Cart',
        ),
        elevation: 0,
      );
    }

    Widget emptycontent() {
      return Container(
        width: double.infinity,
        color: bgColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_cart.png',
              width: 80,
              height: 80,
              color: secondaryColor,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Opss! Your Cart is Empty",
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Let's find your favorite shoes",
              style:
                  secondaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 44,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      backgroundColor: primaryColor,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 10)),
                  child: Text(
                    "Explore Store",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  )),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              CartCard(),
            ],
          ));
    }

    Widget customBottomNav() {
      return Container(
        height: 180,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: primaryTextStyle,
                  ),
                  Text(
                    '\$287,96',
                    style: priceTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 0.3,
              color: subtitleTextColor,
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckoutPage()));
              },
              child: Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: primaryTextColor,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        bottomNavigationBar: customBottomNav(),
        backgroundColor: bgColor3,
        appBar: AppBar(
          backgroundColor: bgColor1,
          centerTitle: true,
          title: Text(
            'Your Cart',
          ),
          elevation: 0,
        ),
        body: content());
  }
}
