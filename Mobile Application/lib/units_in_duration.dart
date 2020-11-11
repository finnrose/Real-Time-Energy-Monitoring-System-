import 'package:flutter/material.dart';
import 'components/text_input.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:core';

class UnitInDuration extends StatefulWidget {
  final String text;
  final DateTime from_to;
  @override
  _UnitInDurationState createState() => _UnitInDurationState();
}

class _UnitInDurationState extends State<UnitInDuration> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

DateTime from_time;
DateTime to_time;
int index;
int min=999999999999999999;

List<Offset> pointList = <Offset>[];

getdata() async{
  await Firestore.instance.collection("database").document('biZV7cepFJA8T6FTcF08').get().then((value){
    setState(() {
      // first add the data to the Offset object
      List.from(value.data['point']).forEach((element){
        Offset data = new Offset(element);

        //then add the data to the List<Offset>, now we have a type Offset
        pointList.add(data);
      });
      //timestamp=firestore_time;
      //units=firestore_time;
      //power=firestore_time;

    });
  });
}
int n=snapshot.data.documents.length,
if (text.compareTo("FROM"))
{ from_time=from_to;

for(i=0;i<n;i++)
{var diffDt=from_time.difference(timestamp[i]);
if(min > diffDt)
{
min=diffDt;
indexfrom=i;
}
}
from_time=timestamp[index];
}
else if (text.compareTo("TO")==0)
{to_time=from_to;

for(i=0;i<n;i++)
{var diffDt=from_time.difference(timestamp[i]);
if(min > diffDt)
{
min=diffDt;
indexto=i;
}
}
to_time=timestamp[index];
}
units_consumed_in_duration=energy[indexto]-energy[indexfrom]

