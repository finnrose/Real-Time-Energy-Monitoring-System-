import 'package:flutter/material.dart';

class Row_fn extends StatelessWidget {
  final String keys;
  final String values;
  Row_fn(this.keys, this.values);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  keys,
                  style: TextStyle(
                      color: Color(0xff3A2556),
                      fontFamily: 'Montserrat',
                      letterSpacing: 0.5,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  values,
                  style: TextStyle(
                      color: Color(0xff3A2556),
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
