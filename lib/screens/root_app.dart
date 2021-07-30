import 'package:flutter/material.dart';
import 'package:youtubetutorialapp1/screens/account_screen.dart';
import 'package:youtubetutorialapp1/screens/cart.dart';
import 'package:youtubetutorialapp1/screens/home_screen.dart';
import 'package:youtubetutorialapp1/screens/market_screen.dart';
import '../theme/colors.dart';
import '../provider/app_data.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int active = 0;
  convertColor(int index) {
    setState(() {
      active = index;
    });
  }

  bool val = false;

  var appBarVar = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: getFooter(),
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: active,
      children: [
        HomePage(),
        MrketScreen(),
        AccountPage(),
        CartScreen(),
        Center(
            child: Text(
          "Setting",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  getAppBar() {
    switch (active) {
      case 0:
        appBarVar = null;
        break;
      case 1:
        appBarVar = null;
        break;
      case 2:
        return AppBar(
          centerTitle: true,
          elevation: 0.8,
          backgroundColor: white,
          title: Text(
            "Account",
            style: TextStyle(color: black),
          ),
        );
        break;

      case 3:
        return AppBar(
          centerTitle: true,
          elevation: 0.8,
          backgroundColor: white,
          title: Text(
            "Cart",
            style: TextStyle(color: black),
          ),
        );
        break;
      case 4:
        return AppBar(
          centerTitle: true,
          elevation: 0.8,
          backgroundColor: white,
          title: Text(
            "Setting",
            style: TextStyle(color: black),
          ),
        );
        break;

      default:
    }
    return PreferredSize(
      preferredSize: Size(0.0, 0.0),
      child: Container(),
    );
  }

  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: white,
          border: Border(top: BorderSide(color: grey.withOpacity(0.2)))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...List.generate(itemsTab.length, (index) {
              return IconButton(
                  onPressed: () {
                    convertColor(index);
                  },
                  icon: Icon(
                    itemsTab[index]['icon'],
                    size: itemsTab[index]['size'],
                    color: active == index ? accent : black,
                  ));
            })
          ],
        ),
      ),
    );
  }
}
