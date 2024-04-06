import 'package:artifex/styling.dart';
import 'package:artifex/widgets/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Home Page
class News extends StatelessWidget {
  final String image;
  final String title;
  News(this.title, this.image);
  String formattedDate = DateFormat('MMMM d, y').format(DateTime.now());

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
            child: Column(children: [
          Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
              )
          ),
          Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: AppStyles.header1),
                    SizedBox(height: 8),
                    Text(formattedDate, style: AppStyles.errorTxt),
                    SizedBox(height: 32),
                    Text(
                        "Brief Description of the News article will go here wahoo.",
                        style: AppStyles.paragraph),
                    SizedBox(height: 32),
                    Divider(color: Colors.white),
                    SizedBox(height: 32),
                    Text("Full description goes here",
                        style: AppStyles.paragraph),
                  ])),
        ])));
  }
}
