import 'package:flutter/material.dart';
import 'arrow_back.dart';

class TitleAndArrow extends StatelessWidget {
  final Function back;
  final String title;
  final double width;

  const TitleAndArrow({this.back, this.title, this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              title,
              style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * width),
          ArrowBack(
            back: back,
          ),
        ],
      ),
    );
  }
}
