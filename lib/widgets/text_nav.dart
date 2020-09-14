import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';
class TextNav extends StatelessWidget {
  final String text;
  final Function ontab;

  const TextNav({ this.text, this.ontab});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: ontab,
            child: Text(text,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Tajawal',
                  color: KTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
