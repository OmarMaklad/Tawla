import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/views/confirm_table/cost.dart';
import 'package:tawlatraining/views/confirm_table/number_people.dart';
import '../../constans.dart';

class ConfirmCardSection extends StatefulWidget {
  @override
  _CardSectionState createState() => _CardSectionState();
}

class _CardSectionState extends State<ConfirmCardSection> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * .52,
        decoration: BoxDecoration(
            color: KTextFieldColor, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50, right: 25, bottom: 10),
              child: Text(
                "موعد الحجز",
                style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 150,
                child: CupertinoDatePicker(
                  initialDateTime: _dateTime,
                  onDateTimeChanged: (dateTime) {
                    setState(() {
                      _dateTime = dateTime;
                    });
                  },
                ),
              ),
            ),
           NumberOfPeople(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30),
              child: Divider(),
            ),
            Coast(),
          ],
        ),
      ),
    );
  }
}
