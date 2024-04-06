import 'package:artifex/styling.dart';
import 'package:flutter/material.dart';

// Gallery Page with all images from selected album
class NftArtGallery extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/images/logo.png", width: 18),
          backgroundColor: AppColors.navBackground,
          foregroundColor: Colors.white,
        ),
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
            child: Column(
              children: [
          
        ])));
  }
}
