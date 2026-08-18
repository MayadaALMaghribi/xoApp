import 'package:flutter/material.dart';
import 'package:xoapp/core/constants/app_color.dart';
import 'package:xoapp/core/constants/app_text_style.dart';
import 'package:xoapp/core/widget/custom_scaffold_widget.dart';
import 'package:xoapp/feature/home/widgets/xo_button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> board = ["", "X", "O", "", "X", "", "O", "", ""];
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
                    // XoButtonWidget(symbol: board[0], onTap: onPlayerClick(0)),
                    XoButtonWidget(
                      symbol: board[0],
                      onTap: () => onPlayerClick(0),
                    ),
                    XoButtonWidget(
                      symbol: board[1],
                      onTap: () => onPlayerClick(1),
                    ),
                    XoButtonWidget(
                      symbol: board[2],
                      onTap: () => onPlayerClick(2),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    XoButtonWidget(
                      symbol: board[3],
                      onTap: () => onPlayerClick(3),
                    ),
                    XoButtonWidget(
                      symbol: board[4],
                      onTap: () => onPlayerClick(4),
                    ),
                    XoButtonWidget(
                      symbol: board[5],
                      onTap: () => onPlayerClick(5),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    XoButtonWidget(
                      symbol: board[6],
                      onTap: () => onPlayerClick(6),
                    ),
                    XoButtonWidget(
                      symbol: board[7],
                      onTap: () => onPlayerClick(7),
                    ),
                    XoButtonWidget(
                      symbol: board[8],
                      onTap: () => onPlayerClick(8),
                    ),
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
  int counter = 0;
  onPlayerClick(int index) {
    print(counter);
    if (board[0].isEmpty) return;
    board[index] = counter.isEven ? "O" : "X";

    counter++;
    setState(() {});
  }
}

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
