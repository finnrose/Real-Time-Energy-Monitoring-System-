import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/round_button.dart';
import 'components/text_input.dart';
import 'bill_page.dart';

class DurationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                height: (MediaQuery.of(context).size.height) * 0.35,
                color: Color(0xffF75590),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextTimeInput('FROM:'),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextTimeInput('TO:'),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RoundButton('GO!', () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BillPage()));
                }),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RoundButton('BACK', () {
                  Navigator.pop(context);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
