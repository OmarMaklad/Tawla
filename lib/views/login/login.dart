import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/forgotpassword/forgot_password.dart';
import 'package:tawlatraining/views/login/skip.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import 'package:tawlatraining/widgets/logo.dart';
import 'package:tawlatraining/widgets/text_nav.dart';
import 'package:tawlatraining/widgets/textfield_section.dart';

class Login extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = GlobalKey <FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color:KBackgroundColor,
          image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.fill
          ),
        ),
        child:Form(
          key: _globalKey,
          child:ListView(
            children: <Widget>[
              Skip(),
              Logo(),
              TextFieldSection(
                title: "رقم الجوال",
                hint: "01234567899",
                onsave: null,
              ),
              SizedBox(height: height*.02,),
              TextFieldSection(
                title: "الرقم السرى",
                hint: "**********",
                onsave: null,

              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 40),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>ForgotPassword()));
                  },
                    child: Text("هل نسيت كلمة المرور؟",style: TextStyle(fontFamily: 'Tajawal'),),
                ),
              ),
              SizedBox(height: height*.04,),
              Button(
                text: "تسجيل الدخول",
                ontab: (){
                 if( _globalKey.currentState.validate()){
                   NamedNavigatorImpl().push(Routes.HOME_ROUTE,replace: false,clean:false);
                 }
                },
              ),
              TextNav(
                text: "لاتمتلك حساب؟سجل الان",
                ontab: (){
                 NamedNavigatorImpl().push(Routes.SIGNUP_ROUTE,clean: false,replace: false);
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
