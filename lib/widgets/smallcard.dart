import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';

class SmallCard extends StatelessWidget {
  final IconData icon;
  final  String title;
  final String text;

  const SmallCard({this.icon, this.title, this.text});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          child: Container(
            height: height * .15,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(
                        icon,
                        size: 14,
                        color: KButtonColor,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        title,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
