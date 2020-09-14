import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/widgets/icon_button.dart';

import '../../constans.dart';
class ShowAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Stack(
        children: <Widget>[
          Container(
            width: 300,
            height: 400,
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(top:50),
              child: Container(
                decoration: BoxDecoration(
                    color: KTextFieldColor,
                    borderRadius: BorderRadius.circular(30)
                ),
                padding: EdgeInsets.only(top: 35,right: 15,left: 15),
                height: 180,
                width: 250,
                child: ListView(
                  children: <Widget>[
                    Text("مطعم ديري كوين",textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Tajawal',fontWeight: FontWeight.w600),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text("سبب الإلغاء",textAlign: TextAlign.right,
                        style: TextStyle(fontFamily: 'Tajawal',fontSize: 14),),
                    ),
                    TextFormField(
                      maxLines:7,
                      textAlign: TextAlign.right,
                      style: TextStyle(),
                      decoration: InputDecoration(
                        hintText:"رسالتك",
                        filled: true,
                        fillColor: KBackgroundColor,
                        hintStyle: TextStyle(fontFamily: 'Tajawal', fontSize: 12),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: KTextFieldColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: KTextFieldColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Button(
                      text: "إرسال",
                      ontab: (){
                        NamedNavigatorImpl().push(Routes.ORDER_ROUTE);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                maxRadius: 40,
                backgroundColor: Colors.green,
              ),
            ],
          ),
        ],
      ),


    );
  }
}
