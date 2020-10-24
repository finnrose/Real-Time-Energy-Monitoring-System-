import 'package:flutter/material.dart';

class Row_fn extends StatelessWidget {
  final String Keys;
  final String Values;
  Row_fn(this.Keys, this.Values);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
      Padding(
          padding : const EdgeInsets.all(8.0),

child: Column(
children: <Widget>[
Text(
Keys, textAlign: TextAlign.left,
style: TextStyle(
color: Colors.black,
fontFamily: 'Montserrat',
letterSpacing: 0.5,
fontSize: 12,


),
),
Text(
':',textAlign: TextAlign.center,
),
Text (
Values, textAlign: TextAlign.right,
style: TextStyle(
color: Colors.black,
fontFamily: 'Montserrat',
fontSize: 12,
letterSpacing: 0.5

),
),

],
),
),
      ],

    );
  }
}



