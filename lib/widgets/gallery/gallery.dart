import 'package:artifex/widgets/shared/tabbar.dart';
import 'package:flutter/material.dart';

// Home Page
class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gallery')),
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