import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/round_button.dart';
import 'components/duration_button.dart';

class DurationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: (MediaQuery.of(context).size.height) * 0.35,
                color: Color(0xffF75590),
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.height) * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextTimeInput('FROM:'),
              ),
              SizedBox(
                  height: (MediaQuery.of(context).size.height) * 0.05
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextTimeInput('TO:'),
              ),
              SizedBox(
                  height: (MediaQuery.of(context).size.height) * 0.1
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RoundButton('GO!', () {}),
              ),
            ],
          ),
        ),
        ),
    );
  }
}