import 'package:flutter/material.dart';
import 'package:spendtracker/widgets/index.dart';

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).primaryColor;

    return SizedBox(
      width: 150.0,
      child: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 100.0,
              alignment: Alignment.bottomCenter,
              child: Text(
                "MENU",
                style: TextStyle(
                    fontSize: 20.0,
                    color: color
                ),
              ),
            ),
            Divider(
              height: 20.0,
              color: Colors.black,
            ),
            MenuItem(
              color: color,
              title: "Accounts",
              icon: Icons.account_balance,
              onTap: () => MenuItem.onNavigate(context, '/accounts'),
            ),
            Divider(
              height: 20.0,
              color: Colors.black,
            ),
            MenuItem(
              color: color,
              title: "Budget Items",
              icon: Icons.account_balance,
              onTap: () => MenuItem.onNavigate(context, '/items'),
            ),
            Divider(
              height: 20.0,
              color: Colors.black,
            ),
            MenuItem(
              color: color,
              title: "Types",
              icon: Icons.account_balance,
              onTap: () => MenuItem.onNavigate(context, '/types'),
            ),
            Divider(
              height: 20.0,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
