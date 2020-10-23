import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextTimeInput extends StatelessWidget {
  final String text;
  TextTimeInput(this.text);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: true,
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.access_time,
          color: Color(0xff4A306D),
          size: (MediaQuery.of(context).size.height) * 0.04,
        ),
        hintText: text,
        hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 18),
        filled: true,
        fillColor: Colors.white70,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Color(0xff4A306D), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Color(0xff4A306D)),
        ),
      ),
    );
  }
}
