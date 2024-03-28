import 'package:artifex/widgets/gallery/gallery.dart';
import 'package:artifex/widgets/home/home.dart';
import 'package:artifex/widgets/market/market.dart';
import 'package:artifex/widgets/profile/profile.dart';
import 'package:flutter/material.dart';

class CustomBottomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomePage()))),
          IconButton(
              icon: Icon(Icons.photo_library),
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => GalleryPage()))),

          // Space for FloatingActionButton
          SizedBox(width: 48),

          IconButton(
              icon: Icon(Icons.shopping_bag_rounded),
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MarketPage()))),
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()))),
        ],
      ),
    );
  }
}
