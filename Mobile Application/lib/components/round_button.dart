import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Function fn;
  RoundButton(this.text, this.fn);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fn,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ],
          border: Border.all(
            color: Color(0xFF4A306D),
            style: BorderStyle.solid,
            width: 3.0,
          ),
          color: Color(0xFFF28482),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Color(0xFF4A306D),
                  fontFamily: 'Montserrat',
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
