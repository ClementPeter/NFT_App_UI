import 'package:flutter/material.dart';
import 'package:nft_app/components/nftCard.dart';

class TrendingTab extends StatelessWidget {
  TrendingTab({super.key});

  String? imagePath;

  @override
  Widget build(BuildContext context) {
    return NftCard(imagePath: 'images/ape4.png');
  }
}
