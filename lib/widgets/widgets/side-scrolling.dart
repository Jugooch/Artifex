import 'package:artifex/widgets/widgets/auction-card.dart';
import 'package:flutter/material.dart';

class SideScrolling extends StatelessWidget {
  final List<String> items =
      List.generate(10, (index) => 'Item $index'); // Sample data

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: ListView.builder(
        // Set scroll direction to horizontal
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
              margin:
                  EdgeInsets.only(right: index < items.length - 1 ? 16.0 : 0),
              child: AuctionCard("https://source.unsplash.com/random/?nft"));
        },
      ),
    );
  }
}
