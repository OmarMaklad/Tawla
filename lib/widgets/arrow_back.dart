import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';

class ArrowBack extends StatelessWidget {
  final Function back;
  const ArrowBack({this.back,}) ;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 20,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,color: KButtonColor,),
                  onPressed:back
              ),
        ],
      ),
    );
  }
}
