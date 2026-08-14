import 'package:flutter/material.dart';
import 'package:xoapp/core/constants/app_color.dart';

class CustomScaffoldWidget extends StatelessWidget {
  const CustomScaffoldWidget({super.key, required this.body});
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: AlignmentGeometry.topCenter,
          image: AssetImage("assets/backgroundimage.png"),
        ),
        gradient: LinearGradient(
          begin: AlignmentGeometry.topStart,
          end: AlignmentGeometry.bottomEnd,
          colors: [AppColor.cyan, AppColor.blue],
        ),
      ),
      child: Scaffold(backgroundColor: Colors.transparent, body: body),
    );
  }
}
