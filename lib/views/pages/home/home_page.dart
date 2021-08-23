import 'package:ecommer_app/theme.dart';
import 'package:ecommer_app/views/widgets/custom_tabbar.dart';
import 'package:ecommer_app/views/widgets/product_card.dart';
import 'package:ecommer_app/views/widgets/product_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

int selectedIndex = 0;

class _HomePageState extends State<HomePage> {
  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hallo, Alex",
                style: primaryTextStyle.copyWith(
                    fontSize: 24, fontWeight: semiBold),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "@alexkeinn",
                style: subtitleTextStyle,
              )
            ],
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image_profile.png')),
                // color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(54))),
          )
        ],
      ),
    );
  }

  Widget categies() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      child: CustomTabbar(
          title: ['All Shoes', 'Running', 'Training', 'Basket'],
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          selectedIndex: selectedIndex),
    );
  }

  Widget popularProduct() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular Product",
            style:
                primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
          ),
          SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget arrivalProduct() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New Arrival",
            style:
                primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
          ),
          SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            // scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                ProductTile(),
                ProductTile(),
                ProductTile(),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor1,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              header(),
              categies(),
              popularProduct(),
              arrivalProduct()
            ],
          ),
        ));
  }
}
