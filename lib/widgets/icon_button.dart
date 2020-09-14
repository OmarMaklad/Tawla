import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';

class Button extends StatelessWidget {
  final String text;
  final Function ontab;

  const Button({this.text, this.ontab});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: height * .06,
        child: FlatButton(
          onPressed: ontab,
          color:KButtonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),),
          child: Text(
            text,
            style: TextStyle(
                fontFamily: "Tajawal",
                fontSize: 16,
                color: KButtonTextColor),
          ),
        ),
      ),
    );
  }
}
