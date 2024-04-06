import 'package:artifex/styling.dart';
import 'package:artifex/widgets/widgets/tabbar.dart';
import 'package:flutter/material.dart';

// Home Page
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/images/logo.png", width: 18),
          backgroundColor: AppColors.navBackground,
        ),
        backgroundColor: AppColors.background,
        bottomNavigationBar: CustomBottomTabBar(3),
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
        body: Padding(
            padding: EdgeInsets.all(32),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("User Name", style: AppStyles.header1),
              SizedBox(height: 32),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("\$0.00", style: AppStyles.largeText),
                  SizedBox(height: 8),
                  Text("0 Ethereum", style: AppStyles.paragraph)
                ]),
                ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.account_balance_wallet),
                    style: AppStyles.primaryBtn)
              ]),
              SizedBox(height: 32),
              Divider(color: Colors.white),
              SizedBox(height: 32),
              ElevatedButton(
                  onPressed: () {},
                  style: AppStyles.secondaryBtn,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    IconButton(
                      icon: Icon(Icons.feedback),
                      style: AppStyles.iconBtn,
                      onPressed: () {
                        // Add onPress logic here
                      },
                    ),
                    SizedBox(width: 16),
                    Text("Send Feedback", style: AppStyles.header1)
                  ])),
              SizedBox(height: 32),
              Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: AppStyles.primaryBtn,
                      child: Text("Sign Out", style: AppStyles.header1)))
            ])));
  }
}
