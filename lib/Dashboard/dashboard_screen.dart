import 'package:flutter/material.dart';
import 'package:flutter_auth/Dashboard/history.dart';
import 'package:flutter_auth/Dashboard/homeScreen.dart';
import 'package:flutter_auth/Dashboard/support.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const History(),
    const Support(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        backgroundColor: Colors.white,
        currentIndex: pageIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.history,
              color: Colors.red,
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.support_agent,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.data_usage,
              color: Colors.red,
            ),
            label: "Profile",
          ),
        ],
        selectedLabelStyle: const TextStyle(
          fontFamily: 'NotoSansKR-Medium',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w300,
          fontFamily: 'NotoSansKR-Regular',
          color: Colors.black.withOpacity(0.3),
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
