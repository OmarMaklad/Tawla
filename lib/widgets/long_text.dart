import 'package:flutter/material.dart';
class LongText extends StatelessWidget {
  final String text;

  const LongText({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
        text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Tajawal',
            fontSize: 16
          ),
        ),
      ),
    );
  }
}
