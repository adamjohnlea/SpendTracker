import 'package:flutter/material.dart';
import 'package:spendtracker/widgets/index.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var amount = '1,203.00';

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            tooltip: "add",
            onPressed: () => print("Click"),
          ),
        ],
      ),
      drawer: Menu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TotalBudget(amount: amount),
          Container(
            padding: EdgeInsets.only(bottom: 10.0),
            height: MediaQuery.of(context).size.height - 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Barline(
                  height: 100.0,
                  color: Colors.red,
                  label: "Withdrawal",
                  amount: "506",
                ),
                Barline(
                  height: 400.0,
                  color: Colors.green,
                  label: "Deposit",
                  amount: "1709",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
