import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/notification/viwe.dart';
class NotificationIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Stack(
        children: <Widget>[
          Image.asset("images/notification.png",),
          Positioned(
            right:0,
            top: 0,
            child: Container(
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color:KIconColor,
                  borderRadius: BorderRadius.circular(6)
              ),
              constraints: BoxConstraints(
                minWidth: 10,
                minHeight: 10,
              ),
              child: Text(
                "2",
                style: TextStyle(color: Colors.white,fontSize: 8),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
      onPressed:(){
       NamedNavigatorImpl().push(Routes.NOTIFICATION_ROUTE,clean: false,replace: false);
      },
    );
  }
}

