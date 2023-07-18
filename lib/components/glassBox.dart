import 'dart:ui';

import 'package:flutter/material.dart';

//Createa Glass like Effect on the Bottom Nav Bar
class GlassBox extends StatelessWidget {
  const GlassBox({required this.child, super.key});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          color: const Color.fromARGB(255, 49, 86, 105),
          height: 70,
          padding: const EdgeInsets.all(5),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
            child: Container(
              alignment: Alignment.center,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
