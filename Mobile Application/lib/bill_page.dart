import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/round_button.dart';
import 'components/row.dart';

class BillPage extends StatelessWidget {
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
                height: 10,
              ),
              Container(
                height: (MediaQuery.of(context).size.height) * 0.36,
                color: Color(0xFFB3B3F1).withOpacity(0.13),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(children: <Widget>[
                      Row_fn('ELECTRICITY SLAB', 'Rs. 1.5/units'),
                      SizedBox(
                        height: 10,
                      ),
                      Row_fn('ENERGY CONSUMED', '20 units'),
                      SizedBox(
                        height: 10,
                      ),
                      Row_fn('AMOUNT', 'Rs.30'),
                      SizedBox(
                        height: 10,
                      ),
                      Row_fn('TAX(total)', 'Rs.5'),
                      SizedBox(
                        height: 10,
                      ),
                      Row_fn('NET TOTAL', 'Rs.35'),
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
