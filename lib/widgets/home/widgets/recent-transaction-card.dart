import 'package:artifex/styling.dart';
import 'package:flutter/material.dart';

// Home Page
class RecentTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 64,
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: AppColors.navBackground,
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            CircleAvatar(),
            SizedBox(width: 16),
            Expanded(child: Text("Transaction Title", style: AppStyles.paragraph, overflow: TextOverflow.ellipsis)),
            SizedBox(width: 16),
            Text(
              "\$0.00",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
