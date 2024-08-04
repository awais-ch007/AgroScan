// ignore_for_file: sort_child_properties_last, unused_import

import 'package:facebook_clone/features/ui/screens/profile_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:facebook_clone/features/ui/screens/home_page.dart';
import 'package:facebook_clone/features/ui/screens/weather-page.dart';
import 'package:facebook_clone/features/posts/presentation/screens/posts_screen.dart';
import 'package:facebook_clone/features/ui/screens/scanner.dart';

// import 'package:facebook_clone/features/ui/screens/scan_page.dart';
import '../../../features/constants/constants.dart';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'package:flutter/material.dart';

import 'screens/selectfruitpage.dart';

final _scaffoldKey = GlobalKey<ScaffoldState>();

class RootPage extends StatefulWidget {
  const RootPage({super.key});
  static const routeName = '/root';

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _bottomNavIndex = 0;

  //pages
  List<Widget> pages = const [
    HomePage(),
    WeatherPage(),
    PostsScreen(),
    ProfilePage(),
  ];

  //list of page icons
  List<IconData> iconList = [
    Icons.home,
    Icons.cloud,
    Icons.groups,
    Icons.person,
  ];
  //list of the pages titles

  List<String> titleList = [
    'Home',
    'Weather',
    'Community',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titleList[_bottomNavIndex],
                style: TextStyle(
                  color: Constants.blackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    // Navigator.of(context).pushNamed(ChatScreen.routeName);
                  },
                  child: Icon(
                    Icons.notifications,
                    color: Constants.blackColor,
                    size: 30.0,
                  ))
            ],
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0.0,
        ),
        body: IndexedStack(
          index: _bottomNavIndex,
          children: pages,
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: 'scanner_fab_hero',
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    // ignore: prefer_const_constructors
                    child: SelectFruitPage(),
                    type: PageTransitionType.bottomToTop));
          },
          child: Image.asset(
            'assets/icons/code-scan-two.png',
            height: 30.0,
          ),
          backgroundColor: Constants.primaryColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
            splashColor: Constants.primaryColor,
            activeColor: Constants.primaryColor,
            inactiveColor: Colors.black.withOpacity(.5),
            icons: iconList,
            activeIndex: _bottomNavIndex,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.softEdge,
            onTap: (index) {
              setState(() {
                _bottomNavIndex = index;
              });
            }));
  }
}
