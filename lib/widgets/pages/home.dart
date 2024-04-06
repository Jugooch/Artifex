import 'package:artifex/styling.dart';
import 'package:artifex/widgets/widgets/transaction-card.dart';
import 'package:artifex/widgets/widgets/carousel.dart';
import 'package:artifex/widgets/widgets/tabbar.dart';
import 'package:flutter/material.dart';

// Home Page
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png", width: 18),
        backgroundColor: AppColors.navBackground,
      ),
      backgroundColor: AppColors.background,
      bottomNavigationBar: CustomBottomTabBar(0),
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
        Container(
            padding: EdgeInsets.all(32),
            child: Column(children: [
              Row(children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () => {},
                        style: AppStyles.secondaryBtn,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$1000.13", style: AppStyles.header1),
                              Text("+7.32%", style: AppStyles.successTxt)
                            ]))),
                SizedBox(width: 32),
                ElevatedButton(
                    onPressed: () => {
                          // Add onPress logic here
                        },
                    style: AppStyles.primaryBtn,
                    child: Icon(Icons.swap_horiz_rounded)),
              ]),

              // Spacing
              SizedBox(height: 32),

              Row(children: [
                ElevatedButton(
                    onPressed: () => {
                          // Add onPress logic here
                        },
                    style: AppStyles.primaryBtn,
                    child: Icon(Icons.photo_library_rounded)),
                SizedBox(width: 32),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () => {
                              // Add onPress logic here
                            },
                        style: AppStyles.secondaryBtn,
                        child: Row(children: [
                          IconButton(
                            icon: Icon(Icons.add),
                            style: AppStyles.iconBtn,
                            onPressed: () {
                              // Add onPress logic here
                            },
                          ),
                          SizedBox(width: 16),
                          Text("Generate Art", style: AppStyles.header1)
                        ]))),
              ]),
            ])),
        Padding(padding: EdgeInsets.symmetric(vertical: 32), child: Carousel()),
        Padding(
          padding: EdgeInsets.all(32),
          child: Text("Recent Transactions", style: AppStyles.header1),
        ),
        Padding(
            padding: EdgeInsets.only(left: 32, right: 32, bottom: 32),
            child: Column(
              children: [
                Transaction(),
                SizedBox(height: 16),
                Transaction(),
                SizedBox(height: 16),
                Transaction(),
              ],
            ))
      ])),
    );
  }
}
