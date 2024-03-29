import 'package:artifex/styling.dart';
import 'package:artifex/widgets/shared/tabbar.dart';
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }
}