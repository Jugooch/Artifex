import 'package:artifex/styling.dart';
import 'package:artifex/widgets/widgets/carousel.dart';
import 'package:artifex/widgets/widgets/side-scrolling.dart';
import 'package:artifex/widgets/widgets/tabbar.dart';
import 'package:flutter/material.dart';

// Market Page
class MarketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/images/logo.png", width: 18),
          backgroundColor: AppColors.navBackground,
        ),
        backgroundColor: AppColors.background,
        bottomNavigationBar: CustomBottomTabBar(2),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Define action for the FloatingActionButton here
          },
          shape: CircleBorder(),
          foregroundColor: Colors.white,
          backgroundColor: AppColors.primary,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Spacing
            SizedBox(height: 32),

            // News Carousel
            Carousel(),

            // Spacing
            SizedBox(height: 64),

            // Currently Winning Auctions
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text("Currently Winning", style: AppStyles.header1)),
            SizedBox(height: 16),
            Container(height: 272, child: SideScrolling()),

            // Spacing
            SizedBox(height: 64),

            // Currently Outbid Auctions
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text("Outbid", style: AppStyles.header1)),
            SizedBox(height: 16),
            Container(height: 272, child: SideScrolling()),
            
            // Spacing
            SizedBox(height: 64),

            // Biggest NFT Movers
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text("Biggest Movers", style: AppStyles.header1)),
            SizedBox(height: 16),
          ]),
        ));
  }
}
