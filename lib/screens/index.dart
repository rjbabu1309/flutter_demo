import 'package:demo/screens/first_page.dart';
import 'package:demo/screens/home.dart';
import 'package:demo/screens/events.dart';
import 'package:demo/screens/portfolio.dart';
import 'package:demo/screens/wallet.dart';
import 'package:demo/screens/share.dart';
import 'package:demo/util/colors.dart';
// import 'package:demo/utility/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: bottomNavigation(context),
    );
  }

  Container bottomNavigation(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        // color: Theme.of(context).primaryColor,
        color: Colors.white,
        // borderRadius: const BorderRadius.only(
        //   topLeft: Radius.circular(20),
        //   topRight: Radius.circular(20),
        // ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            // splashColor: Colors.green,
            onTap: () {
              setState(() {
                pageIndex = 0;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                pageIndex == 0
                    ? Icon(
                        Icons.home,
                        color: AppColors.primaryColor,
                      )
                    : Icon(Icons.home_outlined),
                Text(
                  "Home",
                  style: TextStyle(
                      color: pageIndex == 0
                          ? AppColors.primaryColor
                          : Colors.black),
                ),
              ],
            ),
          ),
          GestureDetector(
            // splashColor: Colors.green,
            onTap: () {
              setState(() {
                pageIndex = 1;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                pageIndex == 1
                    ? Icon(
                        Icons.widgets,
                        color: AppColors.primaryColor,
                      )
                    : Icon(Icons.widgets_outlined),
                Text(
                  "Events",
                  style: TextStyle(
                      color: pageIndex == 1
                          ? AppColors.primaryColor
                          : Colors.black),
                ),
              ],
            ),
          ),
          GestureDetector(
            // splashColor: Colors.green,
            onTap: () {
              setState(() {
                pageIndex = 2;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                pageIndex == 2
                    ? Icon(
                        Icons.work,
                        color: AppColors.primaryColor,
                      )
                    : Icon(Icons.work_outline),
                Text(
                  "Portfolio",
                  style: TextStyle(
                      color: pageIndex == 2
                          ? AppColors.primaryColor
                          : Colors.black),
                ),
                // Icon(Icons.work_outline),
                // Text(""),
              ],
            ),
          ),
          GestureDetector(
            // splashColor: Colors.green,
            onTap: () {
              setState(() {
                pageIndex = 3;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                pageIndex == 3
                    ? Icon(
                        Icons.wallet,
                        color: AppColors.primaryColor,
                      )
                    : Icon(Icons.wallet_outlined),
                Text(
                  "Wallet",
                  style: TextStyle(
                      color: pageIndex == 3
                          ? AppColors.primaryColor
                          : Colors.black),
                ),
              ],
            ),
          ),
          GestureDetector(
            // splashColor: Colors.green,
            onTap: () {
              setState(() {
                pageIndex = 4;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                pageIndex == 4
                    ? Icon(
                        Icons.share,
                        color: AppColors.primaryColor,
                      )
                    : Icon(Icons.share_outlined),
                Text(
                  "Share",
                  style: TextStyle(
                      color: pageIndex == 4
                          ? AppColors.primaryColor
                          : Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
