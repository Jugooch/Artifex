import 'package:artifex/styling.dart';
import 'package:artifex/widgets/gallery/gallery.dart';
import 'package:artifex/widgets/home/home.dart';
import 'package:artifex/widgets/market/market.dart';
import 'package:artifex/widgets/profile/profile.dart';
import 'package:flutter/material.dart';

class CustomBottomTabBar extends StatelessWidget {
  final int index;
  CustomBottomTabBar(this.index);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 0.0,
      color: AppColors.navBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            color: index == 0 ? Colors.white : AppColors.inactiveIcon,
              icon: Icon(Icons.home),
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomePage()))),
          IconButton(
            color: index == 1 ? Colors.white : AppColors.inactiveIcon,
              icon: Icon(Icons.photo_library),
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => GalleryPage()))),

          // Space for FloatingActionButton
          SizedBox(width: 48),

          IconButton(
            color: index == 2 ? Colors.white : AppColors.inactiveIcon,
              icon: Icon(Icons.shopping_bag_rounded),
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MarketPage()))),
          IconButton(
            color: index == 3 ? Colors.white : AppColors.inactiveIcon,
              icon: Icon(Icons.account_circle),
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()))),
        ],
      ),
    );
  }
}
