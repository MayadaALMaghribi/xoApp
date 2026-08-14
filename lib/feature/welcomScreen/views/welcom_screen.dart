import 'package:flutter/material.dart';
import 'package:xoapp/core/constants/app_text_style.dart';
import 'package:xoapp/core/widget/custom_scaffold_widget.dart';
import 'package:xoapp/feature/welcomScreen/widgets/custom_box_choose_player.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Image.asset("assets/backgroundimage.png"),
          Spacer(),
          Text(
            "Tix-Tac-Toe",
            style: AppTextStyle.white40larg,
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Text(
            "Pick who goes first?",
            style: AppTextStyle.white24Medium,
            textAlign: TextAlign.center,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomBoxChoosePlayer(image: "assets/X.png"),
                CustomBoxChoosePlayer(image: "assets/O.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
