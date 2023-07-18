import 'package:flutter/material.dart';

//Creates Card for NFT Image
class NftCard extends StatelessWidget {
  const NftCard({required this.imagePath, super.key});

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
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
