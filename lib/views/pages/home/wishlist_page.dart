import 'package:ecommer_app/theme.dart';
import 'package:ecommer_app/views/widgets/wishlist_card.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          "Favorite Shoes",
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptycontent() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: bgColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_wishlist.png',
                width: 80,
                height: 80,
                color: secondaryColor,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You don't have dream shoes?",
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Let's find your favorite shoes",
                style: secondaryTextStyle.copyWith(
                    fontSize: 14, fontWeight: medium),
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
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: [
              WishlistCard(),
              WishlistCard(),
              WishlistCard(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [header(), content()],
    );
  }
}
