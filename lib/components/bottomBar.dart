import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.index, required this.onTap});

  final int index;
  final Function(int?) onTap;
  //VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      currentIndex: index,
      onTap: onTap,
      selectedItemColor: Colors.white,
      //selectedItemColor: Color(0XFFEF972C),
      unselectedItemColor: Color.fromARGB(69, 216, 216, 216),
      // backgroundColor: Colors.transparent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
      ],
    );
  }
}
