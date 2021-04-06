import 'package:flutter/material.dart';
import 'package:home_aid_design/src/UI/appliances_screen.dart';
import 'package:home_aid_design/src/UI/home_screen.dart';
import 'package:home_aid_design/src/UI/settings.dart';

class AppScaffold extends StatefulWidget {
  final Function onPressed;
  final Function onTap;
  final Widget body;
  AppScaffold({
    this.onPressed,
    @required this.body,
    this.onTap,
  });

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBar() {
    return [
      BottomNavigationBarItem(
          icon: Icon(Icons.warning_amber_rounded), label: 'Home'),
      BottomNavigationBarItem(
          icon: Icon(Icons.article_outlined), label: 'Appliances'),
      BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined), label: 'Settings'),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        HomeScreen(),
        ApplianceScreen(),
        SettingsScreen(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Image(
              image: AssetImage('images/home_aid_logo.png'),
              width: 50.0,
              height: 50.0,
            ),
          ),
        ),
      ),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.warning_amber_rounded), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined), label: 'Appliances'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Settings'),
        ],
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        unselectedItemColor: Colors.blueGrey,
      ),
    );
  }
}

// buildBottomNavBar(),
