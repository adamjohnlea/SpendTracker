import 'package:flutter/material.dart';
import 'package:spendtracker/pages/index.dart';


class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Spend Tracker",
        theme: ThemeData(primarySwatch: Colors.green),
        home: HomePage());
  }
}
