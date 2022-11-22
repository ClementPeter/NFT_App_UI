import 'package:flutter/material.dart';

//Creates Card for NFT Image
class NftCard extends StatelessWidget {
  NftCard({@required this.imagePath, super.key});

  String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Expanded(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath!,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
