import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBOx extends StatelessWidget {
  const GlassBOx({required this.child, super.key});

  final child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          color: Color.fromARGB(255, 84, 138, 164),
          height: 80,
          padding: const EdgeInsets.all(5),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 10),
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
