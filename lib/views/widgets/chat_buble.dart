import 'package:ecommer_app/theme.dart';
import 'package:flutter/material.dart';

class ChatBuble extends StatelessWidget {
  final String text;
  final bool isSender;
  const ChatBuble({Key? key, required this.isSender, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget productPriview() {
      return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(bottom: 12),
        width: 231,
        // height: 155,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isSender ? 12 : 0),
              topRight: Radius.circular(isSender ? 0 : 12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12)),
          color: isSender ? bgColor5 : bgColor4,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: Image.asset(
                    'assets/image_shoes.png',
                    width: 70,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "COURT VISION 2.0 SHOES",
                        style: primaryTextStyle.copyWith(),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '\$57,15',
                        style: priceTextStyle.copyWith(fontWeight: medium),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: primaryColor),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Center(
                    child: Text(
                      "Add to Cart",
                      style: priceTextStyle.copyWith(color: primaryColor),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  height: 41,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Center(
                    child: Text(
                      "By Now",
                      style: priceTextStyle.copyWith(
                          color: bgColor1, fontWeight: medium, fontSize: 14),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          productPriview(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(isSender ? 12 : 0),
                          topRight: Radius.circular(isSender ? 0 : 12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      color: isSender ? bgColor5 : bgColor4),
                  child: Text(
                    text,
                    style: primaryTextStyle,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
