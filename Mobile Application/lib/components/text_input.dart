import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:energy_monitoring/notifications/notification_dialog.dart';

class TextTimeInput extends StatefulWidget {
  final String text;
  TextTimeInput(this.text);

  @override
  _TextTimeInputState createState() => _TextTimeInputState();
}

class _TextTimeInputState extends State<TextTimeInput> {
  DateTime selectedDate = DateTime.now();

  final DateFormat dateFormat = DateFormat('dd-MM-yyyy   HH:mm');
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        showDateTimeDialog(context, initialDate: selectedDate,
            onSelectedDate: (selectedDate) {
          setState(() {
            this.selectedDate = selectedDate;
            print(this.selectedDate);
          });
        });
      },
      child: AbsorbPointer(
        child: TextFormField(
          autocorrect: true,
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.access_time,
              color: Color(0xff4A306D),
              size: 25,
            ),
            hintText: widget.text,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
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
        ),
      ),
    );
  }
}
