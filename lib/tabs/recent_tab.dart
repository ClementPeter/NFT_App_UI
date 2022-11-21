import 'package:flutter/material.dart';
import 'package:nft_app/components/nftCard.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(imagePath: 'images/ape2.png');
  }
}
