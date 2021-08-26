// import 'dart:html';

import 'package:ecommer_app/theme.dart';
import 'package:ecommer_app/views/widgets/chat_buble.dart';
import 'package:flutter/material.dart';
// import 'package:responsive_text_field/responsive_text_field.dart';

class DetailChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        color: bgColor1,
        height: 70,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          children: [
            Image.asset(
              'assets/button_back.png',
              height: 16,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 25,
            ),
            Image.asset(
              'assets/image_shop_logo_online.png',
              // width: 50,
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shoe Store",
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: medium),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Online',
                  style: secondaryTextStyle,
                )
              ],
            )
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              ChatBuble(
                  isSender: true, text: "Hi, This item is still available?"),
              ChatBuble(
                  isSender: false,
                  text:
                      "Good night, This item is only available in size 42 and 43"),
              ChatBuble(isSender: true, text: "Owww, it suits me very well"),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        // height: 45,
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                // height: 45,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                    color: bgColor4,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Center(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 10,
                    textInputAction: TextInputAction.newline,
                    style: primaryTextStyle.copyWith(),
                    decoration: InputDecoration.collapsed(
                        hintText: "Type message...",
                        hintStyle: subtitleTextStyle),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Image.asset(
              'assets/button_send.png',
              height: 45,
              width: 41,
              fit: BoxFit.cover,
            )
          ],
        ),
      );
    }

    Widget productPriview() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        padding: EdgeInsets.all(10),
        height: 74,
        width: 225,
        decoration: BoxDecoration(
            color: bgColor5,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            border: Border.all(width: 1, color: primaryColor)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: Image.asset('assets/image_shoes.png')),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "COURT VISIO...",
                    overflow: TextOverflow.ellipsis,
                    style: primaryTextStyle.copyWith(fontSize: 14),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "\$57,15",
                    style: priceTextStyle,
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/button_close.png',
              width: 22,
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      resizeToAvoidBottomInset: true,
      // bottomNavigationBar: chatInput(),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [header(), content(), productPriview(), chatInput()],
          ),
        ),
      ),
    );
  }
}
