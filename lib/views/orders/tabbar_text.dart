import 'package:flutter/material.dart';
import '../../constans.dart';

class TextTab extends StatelessWidget {
  final String text;

  const TextTab({this.text});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        text,
        style: TextStyle(color: KTextColor, fontSize:16, fontFamily: 'Tajawal'),
      ),
    );
  }
}
