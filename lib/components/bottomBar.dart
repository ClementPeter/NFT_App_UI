import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, required this.index, required this.onTap});

  final int index;
  final Function(int?) onTap;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //  index = widget!.index;
  // int _isIndex = 0;
  // //VoidCallback onTap;
  // void onTap(widget.index) {
  //   setState(
  //     () {
  //       _isSelected = !_isSelected;
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    int index = widget.index;
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      currentIndex: widget.index,
      onTap: widget.onTap,
      selectedItemColor: Colors.white,
      //selectedItemColor: Color(0XFFEF972C),
      unselectedItemColor: Color.fromARGB(69, 216, 216, 216),
      // backgroundColor: Colors.transparent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon:
              index == 0 ? Icon(Icons.home_filled) : Icon(Icons.home_outlined),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: index == 1
              ? Icon(Icons.notifications)
              : Icon(Icons.notifications_outlined),
          label: "",
        ),
        BottomNavigationBarItem(
          icon:
              index == 2 ? Icon(Icons.favorite) : Icon(Icons.favorite_outline),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: index == 3 ? Icon(Icons.person) : Icon(Icons.person_outline),
          label: "",
        ),
      ],
    );
  }
}

// Color pickedColor() {
//   return Container();
// }
