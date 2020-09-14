import 'package:flutter/material.dart';
import '../../constans.dart';
class Money extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListTile(
          leading: Text(
            "20,450",
            style: TextStyle(
                color: KIconColor,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                fontSize: 60),
          ),
          subtitle: Text(
            "ريال",
            style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 16,
                color: KIconColor),
          ),
        ),
      ),
    );
  }
}
