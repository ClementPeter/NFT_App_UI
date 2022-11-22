import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/components/searchBox.dart';

//Builds Custom AppBar and Animated Search Box
class MyAppBar extends StatelessWidget {
  final String? title;

  MyAppBar({super.key, required this.title});

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title!,
              style: GoogleFonts.bebasNeue(
                fontSize: 75,
                color: const Color.fromARGB(255, 29, 29, 29),
              ),
            ),
          ),
          AnimatedSearchBar(textEditingController: textEditingController),
        ],
      ),
    );
  }
}
