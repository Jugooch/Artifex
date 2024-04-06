import 'package:artifex/styling.dart';
import 'package:artifex/widgets/pages/art-albums.dart.dart';
import 'package:artifex/widgets/pages/nft-albums.dart';
import 'package:artifex/widgets/widgets/tabbar.dart';
import 'package:flutter/material.dart';

// Home Page
class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png", width: 18),
        backgroundColor: AppColors.navBackground,
      ),
      backgroundColor: AppColors.background,
      bottomNavigationBar: CustomBottomTabBar(1),
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
      body: Column(
        children: [
          Expanded(
            child: _buildInkWellButton(
              context,
              assetImagePath: 'assets/images/nfts.png',
              buttonLabel: 'NFTs',
              onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NftAlbums()));
              },
            ),
          ),
          Expanded(
            child: _buildInkWellButton(
              context,
              assetImagePath: 'assets/images/ai-art.png',
              buttonLabel: 'AI Art',
              onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ArtAlbums()));
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInkWellButton(BuildContext context,
      {required String assetImagePath,
      required String buttonLabel,
      required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(width: double.infinity, child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Image.asset(
              assetImagePath,
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: onTap,
            style: AppStyles.primaryBtn,
            child: Text(buttonLabel, style: AppStyles.header1),
          ),
        ],
      ),
    ));
  }
}
