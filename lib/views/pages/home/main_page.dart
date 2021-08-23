import 'package:ecommer_app/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
        notchMargin: 5,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
            backgroundColor: bgColor4,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  label: '',
                  icon: Image.asset(
                    'assets/icon_home.png',
                    width: 20,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Image.asset(
                    'assets/icon_chat.png',
                    width: 21,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Image.asset(
                    'assets/icon_wishlist.png',
                    width: 21,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Image.asset(
                    'assets/icon_profile.png',
                    width: 21,
                  )),
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      floatingActionButton: cartButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomBar(),
      body: Center(
        child: Text("Main Page"),
      ),
    );
  }
}
