import 'package:flutter/material.dart';
import 'package:xoapp/core/constants/app_color.dart';

class CustomBoxChoosePlayer extends StatelessWidget {
  final String image;
  const CustomBoxChoosePlayer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: EdgeInsets.all(20),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: AppColor.white,
      ),
      child: Image.asset(image),
    );
  }
}
