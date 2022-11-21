import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/components/searchBox.dart';

class MyAppBar extends StatelessWidget {
  final String? title;

  VoidCallback onSearcTip;
  MyAppBar({super.key, required this.title, required this.onSearcTip});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.baseline,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title!,
              style: GoogleFonts.bebasNeue(
                fontSize: 75,
                color: Colors.grey[800],
              ),
            ),
          ),
          // GestureDetector(
          //   child: Container(
          //     padding: const EdgeInsets.all(12),
          //     decoration: BoxDecoration(
          //       border: Border.all(color: Colors.white),
          //       borderRadius: BorderRadius.circular(16),
          //       color: Colors.grey[200],
          //     ),
          //     child: Icon(
          //       Icons.search,
          //       size: 36,
          //       color: Colors.grey[800],
          //     ),
          //   ),
          // ),

          AnimatedSearchBar(),
          //SizedBox(width: 40)
        ],
      ),
    );
  }
}
