import 'package:ecommer_app/theme.dart';
import 'package:ecommer_app/views/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  Widget header() {
    return AppBar(
      backgroundColor: bgColor1,
      centerTitle: true,
      title: Text(
        "Message Support",
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
              'assets/icon_headset.png',
              width: 80,
              height: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Opss no message yet?",
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "You have never done a transaction",
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
      ),
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        color: bgColor3,
        child: ListView(
          children: [ChatTile()],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [header(), content()],
    );
  }
}
