import 'package:flutter/material.dart';
import '../../constans.dart';

class Coast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListTile(
        leading: CircleAvatar(
          maxRadius: 30,
        ),
        title: Text(
          "مطعم ديري كوين",
          style: TextStyle(fontFamily: 'Tajawal', fontSize: 18),
        ),
        subtitle: Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              size: 12,
              color: KTextColor,
            ),
            Text(
              "شارع الملك عبد العزيز - جدة",
              style: TextStyle(
                  color: KTextColor,
                  fontFamily: 'Tajawal',
                  fontSize: 10),
            ),
          ],
        ),
        trailing: Container(
          width: 65,
          child: Stack(
            children: <Widget>[
              Text(
                "50",
                style: TextStyle(
                    color: KIconColor,
                    fontSize: 40,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.bold),
              ),
              Positioned(
                bottom:15,
                left: 0,
                child: Text("ريال",
                  style: TextStyle(fontFamily: "Tajawal",fontSize: 12,color: KIconColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
