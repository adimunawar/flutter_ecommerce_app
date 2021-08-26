import 'package:ecommer_app/theme.dart';
import 'package:ecommer_app/views/pages/edit_profile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        height: 124,
        color: bgColor1,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Row(
          children: [
            Image.asset(
              'assets/image_profile.png',
              width: 64,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
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
                    style: subtitleTextStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/button_exit.png',
              width: 20,
            )
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: ListView(
            children: [
              Text(
                "Account",
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: semiBold),
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditProfile()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Edit Profile",
                        style: secondaryTextStyle.copyWith(fontSize: 13)),
                    Image.asset('assets/icon_panah.png')
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Orders",
                      style: secondaryTextStyle.copyWith(fontSize: 13)),
                  Image.asset('assets/icon_panah.png')
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Help",
                      style: secondaryTextStyle.copyWith(fontSize: 13)),
                  Image.asset('assets/icon_panah.png')
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "General",
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: semiBold),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Privacy & Policy",
                      style: secondaryTextStyle.copyWith(fontSize: 13)),
                  Image.asset('assets/icon_panah.png')
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Term of Service",
                      style: secondaryTextStyle.copyWith(fontSize: 13)),
                  Image.asset('assets/icon_panah.png')
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rate App",
                      style: secondaryTextStyle.copyWith(fontSize: 13)),
                  Image.asset('assets/icon_panah.png')
                ],
              ),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Column(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
