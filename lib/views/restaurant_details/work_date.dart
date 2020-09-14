import 'package:flutter/material.dart';
import 'package:tawlatraining/views/restaurant_details/date.dart';

class WorkDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical:5),
        child: Text("مواعيد العمل",
          style: TextStyle(
              fontFamily: 'Tajawal', fontSize: 16, color:Colors.black),),
      ),
      subtitle: Row(
        children: <Widget>[
          Date(
            day: "السبت",
            date: "صباحا إلى 10:00 مساءا",
          ),
          SizedBox(width: 10,),
          Date(
            day: "السبت",
            date: "صباحا إلى 10:00 مساءا",
          ),
        ],
      ),
    );
  }
}
