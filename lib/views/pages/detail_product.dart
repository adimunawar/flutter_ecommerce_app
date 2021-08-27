import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommer_app/theme.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({Key? key}) : super(key: key);

  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  List images = [
    'assets/image_shoes.png',
    'assets/image_shoes2.png',
    'assets/image_shoes3.png',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget indicator(int index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 2),
        width: currentIndex == index ? 16 : 4,
        height: 4,
        decoration: BoxDecoration(
            color: currentIndex == index ? primaryColor : Color(0xffC4C4C4),
            borderRadius: BorderRadius.all(Radius.circular(10))),
      );
    }

    Widget header() {
      int index = -1;
      return Container(
        // margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.chevron_left)),
                  Icon(
                    Icons.shopping_bag,
                    color: bgColor1,
                  )
                ],
              ),
            ),
            CarouselSlider(
              items: images
                  .map((e) => Container(
                        height: 310,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(e), fit: BoxFit.cover),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((e) {
                index++;
                return indicator(index);
              }).toList(),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffECEDEF),
      body: ListView(
        children: [header()],
      ),
    );
  }
}
