import 'package:flutter/material.dart';

class XoButtonWidget extends StatelessWidget {
  const XoButtonWidget({super.key, required this.symbol, required this.onTap});
  final String symbol;
  final Function()? onTap;
  //  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: symbol.isEmpty
            ? SizedBox(height: double.infinity, width: double.infinity)
            : Image.asset(
                symbol == "X" ? "assets/X.png" : "assets/O.png",
                scale: 2.1,
              ),
      ),
    );
  }
}
