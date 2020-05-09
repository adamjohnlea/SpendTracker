import 'package:flutter/material.dart';

class Barline extends StatelessWidget {
  final double height;
  final Color color;
  final String label;
  final String amount;

  Barline({
    @required this.height,
    @required this.color,
    @required this.label,
    @required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: height,
          width: 100.0,
          color: color,
        ),
        Text("$label"),
        Text("\$$amount"),
      ],
    );
  }
}
