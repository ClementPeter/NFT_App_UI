import 'package:flutter/material.dart';
import 'package:nft_app/components/nftCard.dart';

//Top Tab Content
class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(imagePath: 'images/ape2.png');
  }
}