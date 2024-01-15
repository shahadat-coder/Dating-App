import 'package:dating_app/UI/screens/Discover_Screen.dart';
import 'package:dating_app/UI/screens/Massage_Screen.dart';
import 'package:dating_app/UI/screens/matches_Screen.dart';
import 'package:dating_app/UI/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';

class BottomNavBarScreen extends StatefulWidget {
   const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}
class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _currentIndex = 0;
  SnakeShape snakeShape = SnakeShape.indicator;
  Color selectedColor = Colors.redAccent;
  Color unselectedColor = Colors.grey.shade200;
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  final screens =[
    const DiscoverScreen(),
    const MatchesScreen(),
    const MassageScreen(),
    const ProfileScreen(),
  ];

@override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
        bottomNavigationBar: SnakeNavigationBar.color(
          backgroundColor: Colors.grey.shade300,
          behaviour: snakeBarStyle,
          snakeShape: snakeShape,

          ///configuration for SnakeNavigationBar.color

          snakeViewColor: selectedColor,
          selectedItemColor: snakeShape == SnakeShape.indicator
              ? selectedColor
              : Colors.redAccent,
          unselectedItemColor: Colors.blueGrey,

          showUnselectedLabels: showUnselectedLabels,
          showSelectedLabels: showSelectedLabels,

          currentIndex: _currentIndex,
          onTap: (value){
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.book_sharp), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.sms_failed_rounded), label: 'massage'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'profile'),
          ],
        )
    );

  }
}
