import 'package:car_2_go/Dashboard.dart';
import 'package:car_2_go/SellCar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePageF extends StatefulWidget {
  @override
  _HomePageFState createState() => _HomePageFState();
}

PersistentTabController _controller = PersistentTabController(initialIndex: 0);

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(LineIcons.home),
      activeColor: CupertinoColors.activeBlue,
      inactiveColor: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(LineIcons.plus_circle),
      activeColor: CupertinoColors.activeBlue,
      inactiveColor: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.search),
      activeColor: CupertinoColors.activeBlue,
      inactiveColor: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(LineIcons.user),
      activeColor: CupertinoColors.activeBlue,
      inactiveColor: CupertinoColors.systemGrey,
    ),
  ];
}

class _HomePageFState extends State<HomePageF> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF1D1D1F),
      child: Scaffold(
        backgroundColor: Color(0xFF1D1D1F),
        appBar: AppBar(
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cars',
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: 'Blazed',
                ),
              ),
              Text(
                'To',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Blazed',
                ),
              ),
              Text(
                'Go',
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'Blazed',
                ),
              ),
            ],
          ),
        ),
        body: Container(
          color: Color(0xFF1D1D1F),
          child: PersistentTabView(
            navBarHeight: 50,
            controller: _controller,
            screens: _buildScreens(),
            items: _navBarsItems(),
            confineInSafeArea: true,
            backgroundColor: Colors.white,
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: true,
            // This needs to be true if you want to move up the screen when keyboard appears.
            stateManagement: true,
            hideNavigationBarWhenKeyboardShows: true,
            // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
            decoration: NavBarDecoration(
              colorBehindNavBar: Color(0xFF1D1D1F),
            ),
            popAllScreensOnTapOfSelectedTab: true,
            itemAnimationProperties: ItemAnimationProperties(
              // Navigation Bar's items animation properties.
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: ScreenTransitionAnimation(
              // Screen transition animation on change of selected tab.
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            navBarStyle: NavBarStyle
                .style6, // Choose the nav bar style with this property.
          ),
        ),
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      DashBoard(),
      SellCar(),
      _buildBody3(context),
      _buildBody4(context),
    ];
  }

  Widget _buildBody4(BuildContext context) {}

  Widget _buildBody3(BuildContext context) {}
}
