import 'package:flutter/material.dart';

import '../../constans.dart';

class Date extends StatelessWidget {
  final String day;
  final String date;

  const Date({ this.day, this.date});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(6),
        height: 35,
        decoration: BoxDecoration(
            color: KTextFieldColor,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              day,
              style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 12,
                  color: Colors.black),
            ),
            Text(
              date,
              style: TextStyle(
                  fontFamily: 'Tajawal', fontSize: 10, color: KTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
