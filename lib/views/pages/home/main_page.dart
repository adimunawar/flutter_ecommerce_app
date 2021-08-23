import 'package:ecommer_app/theme.dart';
import 'package:ecommer_app/views/pages/home/chat_page.dart';
import 'package:ecommer_app/views/pages/home/home_page.dart';
import 'package:ecommer_app/views/pages/home/profile_page.dart';
import 'package:ecommer_app/views/pages/home/wishlist_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  Widget cartButtom() {
    return FloatingActionButton(
      backgroundColor: secondaryColor,
      onPressed: () {},
      child: Image.asset(
        'assets/icon_cart.png',
        width: 22,
      ),
    );
  }

  Widget customBottomBar() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomAppBar(
        color: bgColor4,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            backgroundColor: bgColor4,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10, right: 10),
                    child: Image.asset(
                      'assets/icon_home.png',
                      width: 20,
                      color: selectedIndex == 0 ? primaryColor : iconColor,
                    ),
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10, right: 30),
                    child: Image.asset(
                      'assets/icon_chat.png',
                      width: 21,
                      color: selectedIndex == 1 ? primaryColor : iconColor,
                    ),
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10, left: 30),
                    child: Image.asset(
                      'assets/icon_wishlist.png',
                      width: 21,
                      color: selectedIndex == 2 ? primaryColor : iconColor,
                    ),
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                    ),
                    child: Image.asset(
                      'assets/icon_profile.png',
                      width: 21,
                      color: selectedIndex == 3 ? primaryColor : iconColor,
                    ),
                  )),
            ]),
      ),
    );
  }

  Widget body() {
    switch (selectedIndex) {
      case 0:
        return HomePage();
        break;
      case 1:
        return ChatPage();
        break;
      case 2:
        return WishlistPage();
        break;
      case 3:
        return ProfilePage();
        break;

      default:
        return ProfilePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor1,
        floatingActionButton: cartButtom(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customBottomBar(),
        body: body());
  }
}
