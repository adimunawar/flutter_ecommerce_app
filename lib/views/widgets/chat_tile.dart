import 'package:ecommer_app/theme.dart';
import 'package:ecommer_app/views/pages/detail_chat_page.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailChatPage()));
      },
      child: Container(
        margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo.png',
                  width: 54,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shoe Store",
                        style: primaryTextStyle.copyWith(fontSize: 15),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Good night, This item is on...",
                        style: secondaryTextStyle.copyWith(fontWeight: light),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Now",
                  style: secondaryTextStyle.copyWith(fontSize: 10),
                )
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Divider(
              color: Color(0xff2B2939),
            )
          ],
        ),
      ),
    );
  }
}
