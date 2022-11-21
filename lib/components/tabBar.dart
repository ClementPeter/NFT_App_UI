import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTabBarMenu extends StatelessWidget {
  MyTabBarMenu({required this.tabOptions, super.key});

  final List tabOptions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          unselectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelColor: Colors.grey,
          labelStyle: GoogleFonts.bebasNeue(fontSize: 30),
          isScrollable: true,
          tabs: [
            Tab(child: Text(tabOptions[0][0].toString().toUpperCase())),
            Tab(child: Text(tabOptions[1][0].toString().toUpperCase())),
            Tab(child: Text(tabOptions[2][0].toString().toUpperCase())),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [
              tabOptions[0][1],
              tabOptions[1][1],
              tabOptions[2][1],
            ],
          ),
        ),
      ],
    );
  }
}
