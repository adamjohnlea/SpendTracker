import 'package:flutter/material.dart';
import 'package:spendtracker/pages/widgets/total_budget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var amount = '1,203.00';

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Home"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
            tooltip: "add",
            onPressed: () => print("Click"),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TotalBudget(amount: amount),
          Container(
            padding: EdgeInsets.only(bottom: 10.0),
            height: MediaQuery.of(context).size.height - 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.red,
                    ),
                    Text("Withdraw"),
                    Text("\$506")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 400.0,
                      width: 100.0,
                      color: Colors.green,
                    ),
                    Text("Deposit"),
                    Text("\$1709")
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


