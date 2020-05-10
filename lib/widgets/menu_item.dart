import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final Color color;
  final String title;
  final IconData icon;

  final Function onTap;

  static void onNavigate(BuildContext context, String uri) {
    Navigator.of(context).pop();
    Navigator.of(context).pushNamed(uri);
  }

  MenuItem({
    @required this.color,
    @required this.title,
    @required this.icon,
    @required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Opacity(
        opacity: 0.6,
        child: Container(
          height: 70.0,
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Icon(icon, color: color, size: 50.0),
              Text(
                title,
                style: TextStyle(color: color, fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }

}
