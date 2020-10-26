import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_energy_meter/components/text_input.dart';

Future<TimeOfDay> _selectTime(BuildContext context,
    {@required DateTime initialDate}) {
  //final now = DateTime.now();

  return showTimePicker(
      context: context,
      initialTime:
          TimeOfDay(hour: initialDate.hour, minute: initialDate.minute),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Color(0xff36244F),
            accentColor: Color(0xff36244F),
            colorScheme: ColorScheme.light(primary: const Color(0xff36244F)),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child,
        );
      });
}

Future<DateTime> _selectDateTime(BuildContext context,
    {@required DateTime initialDate}) {
  final now = DateTime.now();
  final newestDate = initialDate.isAfter(now) ? initialDate : now;

  return showDatePicker(
      context: context,
      initialDate: newestDate.add(Duration(seconds: 1)),
      firstDate: DateTime(1970),
      lastDate: now,
      builder: (BuildContext context, Widget child) {
        return Theme(
            data: ThemeData.light().copyWith(
              primaryColor: Color(0xff36244F),
              accentColor: Color(0xff36244F),
              colorScheme: ColorScheme.light(primary: const Color(0xff36244F)),
              buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
            ),
            child: child);
      });
}

showDateTimeDialog(
  BuildContext context, {
  @required ValueChanged<DateTime> onSelectedDate,
  @required DateTime initialDate,
}) {
  final dialog = Dialog(
    backgroundColor: Color(0xFFCEC2FF),
    child: DateTimeDialog(
        onSelectedDate: onSelectedDate, initialDate: initialDate),
  );

  showDialog(context: context, builder: (BuildContext context) => dialog);
}

class DateTimeDialog extends StatefulWidget {
  final ValueChanged<DateTime> onSelectedDate;
  final DateTime initialDate;

  const DateTimeDialog({
    @required this.onSelectedDate,
    @required this.initialDate,
    Key key,
  }) : super(key: key);
  @override
  _DateTimeDialogState createState() => _DateTimeDialogState();
}

class _DateTimeDialogState extends State<DateTimeDialog> {
  DateTime selectedDate;

  @override
  void initState() {
    super.initState();

    selectedDate = widget.initialDate;
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Select date and time',
              style: TextStyle(
                color: Color(0xff36244F),
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Color(0xff36244F),
                  child: Text(
                    DateFormat('dd-MM-yyyy').format(selectedDate),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () async {
                    final date = await _selectDateTime(context,
                        initialDate: selectedDate);
                    if (date == null) return;

                    setState(() {
                      selectedDate = DateTime(
                        date.year,
                        date.month,
                        date.day,
                        selectedDate.hour,
                        selectedDate.minute,
                      );
                    });

                    widget.onSelectedDate(selectedDate);
                  },
                ),
                const SizedBox(width: 8),
                RaisedButton(
                  color: Color(0xff36244F),
                  child: Text(
                    DateFormat('HH:mm').format(selectedDate),
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    final time =
                        await _selectTime(context, initialDate: selectedDate);
                    if (time == null) return;
                    setState(() {
                      selectedDate = DateTime(
                        selectedDate.year,
                        selectedDate.month,
                        selectedDate.day,
                        time.hour,
                        time.minute,
                      );
                    });

                    widget.onSelectedDate(selectedDate);
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            OutlineButton(
              color: Color(0xff36244F),
              borderSide: BorderSide(width: 3),
              child: Text(
                'OK',
                style: TextStyle(
                  color: Color(0xff36244F),
                ),
              ),
              onPressed: () {
                setState(() {
                  TextTimeInput(selectedDate.toIso8601String());
                });
                Navigator.of(context).pop();
              },
              highlightColor: Colors.orange,
            ),
          ],
        ),
      );
}
