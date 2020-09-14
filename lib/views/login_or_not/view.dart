import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/widgets/arrow_back.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import 'package:tawlatraining/widgets/long_text.dart';
import 'package:tawlatraining/widgets/white_button.dart';

class LoginOrNot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body:ListView(
        children: <Widget>[
          ArrowBack(
            back: () {
              NamedNavigatorImpl().push(Routes.DETAILS_ROUTE);
            },
          ),
          //Logo
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(child: Image.asset("images/login_or_not.png")),
          ),
          //text
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: LongText(text: "من فضلك قم بالاشتراك بالتطبيق حتى تتمكن من حجز طاولتك بنجاح",),
          ),
          Button(
            text: "تسجيل دخول",
            ontab: (){
              NamedNavigatorImpl().push(Routes.LOGIN_ROUTE);
            },
          ),
          SizedBox(height: 15,),
          WhiteButton(
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
