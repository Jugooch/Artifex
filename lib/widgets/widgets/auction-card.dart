import 'package:artifex/styling.dart';
import 'package:flutter/material.dart';

// Home Page
class AuctionCard extends StatelessWidget {
  final String image;

  AuctionCard(this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
            ),
            SizedBox(height: 16),
            Text("NFT Title",
                style: AppStyles.header1,
                overflow: TextOverflow.ellipsis,
                maxLines: 1),
            SizedBox(height: 16),
            Text("Current Bid:", style: AppStyles.paragraph),
            SizedBox(height: 8),
            Text(
              "\$0.00",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
