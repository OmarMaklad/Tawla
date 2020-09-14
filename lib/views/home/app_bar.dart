import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';
import 'notification.dart';
Widget homeAppBar( final Function show){
  return AppBar(
    elevation: 0,
    backgroundColor: KBackgroundColor,
    leading: NotificationIcon(),
    actions: <Widget>[
       GestureDetector(
         onTap:show,
           child: Image.asset("images/table_logo.png"),
       ),
    ],
  );
}