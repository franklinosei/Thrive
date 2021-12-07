import 'package:flutter/material.dart';
import 'package:thrive/constants/constants.dart';
import 'package:thrive/screens/help_screen/help_screen.dart';
import 'package:thrive/screens/history_screen/history_screen.dart';
import 'package:thrive/screens/home/home.dart';
import 'package:thrive/screens/user_screen/user_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    //just used it to build the page ... change it to Home()
    // const CategoryScreen(),
    const Home(),
    const HistoryScreen(),
    const UserSettingsScreen(),
    const HelpScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        selectedIconTheme: const IconThemeData(
          color: lightOrangeColor,
          size: 30,
        ),
        selectedLabelStyle: const TextStyle(
          color: primaryColor,
          // fontSize: 20,
        ),
        unselectedIconTheme: const IconThemeData(color: blackColor),
        unselectedLabelStyle: const TextStyle(color: blackColor),
        showUnselectedLabels: true,
        unselectedItemColor: blackColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_help_outlined),
            label: 'Help',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
