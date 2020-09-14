import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';

class WhiteButton extends StatelessWidget {
  final String text;
  final Function ontab;

  const WhiteButton({this.text, this.ontab});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: height * .06,
        decoration: BoxDecoration(
          color: KButtonColor,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: FlatButton(
            onPressed: ontab,
            color:KButtonTextColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),),
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: "Tajawal",
                  fontSize: 16,
                  color: KButtonColor),
            ),
          ),
        ),
      ),
    );
  }
}
