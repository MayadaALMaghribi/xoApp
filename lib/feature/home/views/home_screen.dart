import 'package:flutter/material.dart';
import 'package:xoapp/core/constants/app_color.dart';
import 'package:xoapp/core/constants/app_text_style.dart';
import 'package:xoapp/core/widget/custom_scaffold_widget.dart';
import 'package:xoapp/feature/home/widgets/xo_button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildTimer(),
            SizedBox(height: 32),
            player(),
            buildBoard(),
          ],
        ),
      ),
    );
  }
}

List<String> board = ["", "X", "O", "", "X", "", "", "", ""];
buildTimer() => Container(
  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(44),
    color: AppColor.white,
  ),
  child: Text(
    "00:05",
    style: AppTextStyle.black32SemiBold,
    textAlign: TextAlign.center,
  ),
);

player() => Text(
  "Player 1’s Turn",
  style: AppTextStyle.white36Bold,
  textAlign: TextAlign.center,
);

Expanded buildBoard() => Expanded(
  child: Container(
    decoration: BoxDecoration(
      color: AppColor.white,
      borderRadius: BorderRadius.circular(44),
    ),
    child: Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  XoButtonWidget(symbol: board[0], onTap: () {}),
                  XoButtonWidget(symbol: "X", onTap: () {}),
                  XoButtonWidget(symbol: "O", onTap: () {}),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  XoButtonWidget(symbol: "", onTap: () {}),
                  XoButtonWidget(symbol: "X", onTap: () {}),
                  XoButtonWidget(symbol: "O", onTap: () {}),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  XoButtonWidget(symbol: "", onTap: () {}),
                  XoButtonWidget(symbol: "X", onTap: () {}),
                  XoButtonWidget(symbol: "O", onTap: () {}),
                ],
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Divider(
              thickness: 1,
              color: AppColor.black,
              endIndent: 15,
              indent: 15,
            ),
            Divider(
              thickness: 1,
              color: AppColor.black,
              endIndent: 15,
              indent: 15,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            VerticalDivider(
              thickness: 1,
              color: AppColor.black,
              endIndent: 15,
              indent: 15,
            ),
            VerticalDivider(
              thickness: 1,
              color: AppColor.black,
              endIndent: 15,
              indent: 15,
            ),
          ],
        ),
      ],
    ),
  ),
);
