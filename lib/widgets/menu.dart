import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Text("Accounts"),
          Text("Budget Items"),
          Text("Types"),
        ],
      ),
    );
  }
}
