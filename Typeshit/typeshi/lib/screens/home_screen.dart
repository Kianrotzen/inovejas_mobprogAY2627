import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/custom_text.dart';
import 'newsfeed_screen.dart';
import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<String> _titles = [
    APP_NAME,
    'Notifications',
    'Friends',
    //'Marketplace',
    'Profile',
  ];

  final List<Widget> _pages = const [
    NewsFeedScreen(),
    NotificationScreen(),
    Center(child: Text('Friends')),
    //Center(child: Text('Marketplace')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    final bool isHome = _currentIndex == 0;

    return Scaffold(
      appBar: AppBar(
        shadowColor: APP_TEXT_COLOR_WHITE,
        elevation: 2,
        title: CustomText(
          text: _titles[_currentIndex],
          fontSize: ScreenUtil().setSp(isHome ? 25 : 22),
          color: isHome ? APP_PRIMARY : Colors.black,
          fontWeight: isHome ? FontWeight.bold : FontWeight.bold,
          fontFamily: isHome ? 'Klavika' : 'Frutiger',
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: APP_PRIMARY,
        unselectedItemColor: Colors.grey,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Friends'),
          //BottomNavigationBarItem(
              //icon: Icon(Icons.storefront), label: 'Marketplace'),
          //BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
