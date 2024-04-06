import 'package:artifex/styling.dart';
import 'package:flutter/material.dart';

// Home Page
class GenerateArt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/images/logo.png", width: 18),
          backgroundColor: AppColors.navBackground,
        ),
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
            child: Padding(padding: EdgeInsets.all(32), child: Column())));
  }
}
