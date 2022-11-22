import 'package:flutter/material.dart';
import 'package:nft_app/components/nftCard.dart';

//Trending Tab Content
class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(imagePath: 'images/ape3.png');
  }
}
