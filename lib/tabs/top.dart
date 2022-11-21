import 'package:flutter/material.dart';
import 'package:nft_app/components/nftCard.dart';

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(imagePath: 'images/ape3.png');
  }
}

// NftCard(
//       imagePath: 'lib/images/apiens_2.png',
//     );
