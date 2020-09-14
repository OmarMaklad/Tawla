import 'package:flutter/material.dart';

import '../../constans.dart';

class NumberOfPeople extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 40,
            width: 110,
            decoration: BoxDecoration(
                color: KBackgroundColor,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.remove),
                ),
                Text("2"),
                IconButton(
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ),
          Text(
            "عدد الافراد",
            style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
