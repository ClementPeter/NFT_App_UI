import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, required this.index, required this.onTap});

  final int index;
  final Function(int?) onTap;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    int index = widget.index;

    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      currentIndex: widget.index,
      onTap: widget.onTap,
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color.fromARGB(69, 216, 216, 216),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: index == 0
              ? const Icon(Icons.home_filled)
              : const Icon(Icons.home_outlined),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: index == 1
              ? const Icon(Icons.notifications)
              : const Icon(Icons.notifications_outlined),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: index == 2
              ? const Icon(Icons.favorite)
              : const Icon(Icons.favorite_outline),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: index == 3
              ? const Icon(Icons.person)
              : const Icon(Icons.person_outline),
          label: "",
        ),
      ],
    );
  }
}
