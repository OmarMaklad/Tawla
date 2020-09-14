import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import 'package:tawlatraining/widgets/long_text.dart';

class Done extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body:ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 140),
            child: Center(child: Image.asset("images/done.png")),
          ),
          SizedBox(height: 20,),
          LongText(
            text: "تم إرسال طلبك بنجاح إلى صاحب المطعم",
          ),
          SizedBox(
            height: 70,
          ),
          Button(
            text: "العودة للرئيسية",
            ontab: (){
              NamedNavigatorImpl().push(Routes.HOME_ROUTE);
            },
          ),
        ],
      ),
    );
  }
}
