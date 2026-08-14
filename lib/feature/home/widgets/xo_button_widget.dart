import 'package:flutter/material.dart';

class XoButtonWidget extends StatefulWidget {
  const XoButtonWidget({super.key, required this.symbol, required this.onTap});
  final String symbol;
  final Function()? onTap;

  @override
  State<XoButtonWidget> createState() => _XoButtonWidgetState();
}

class _XoButtonWidgetState extends State<XoButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.onTap,
        child: widget.symbol.isEmpty
            ? SizedBox()
            : Image.asset(
                widget.symbol == "X" ? "assets/X.png" : "assets/O.png",
                scale: 2.1,
              ),
      ),
    );
  }
}
