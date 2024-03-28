import 'package:artifex/widgets/shared/tabbar.dart';
import 'package:flutter/material.dart';

// Home Page
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      bottomNavigationBar: CustomBottomTabBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Define action for the FloatingActionButton here
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }
}