import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/round_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'duration_page.dart';

class HomePage extends StatelessWidget {
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
                child: RoundButton('GENERATE BILL', () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DurationPage()));
                }),
              ),
              SizedBox(
                height: 10,
              ),
              SvgPicture.asset(
                "images/electricity(1).svg",
                color: Color(0xFF4A306D),
                height: (MediaQuery.of(context).size.height) * 0.4,
                width: (MediaQuery.of(context).size.width) * 0.4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
