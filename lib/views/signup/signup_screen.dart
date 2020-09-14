import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/Conditions/conditions.dart';
import 'package:tawlatraining/views/signup/name_section.dart';
import 'package:tawlatraining/widgets/logo.dart';
import 'package:tawlatraining/widgets/text_nav.dart';
import 'package:tawlatraining/widgets/textfield_section.dart';
import '../../constans.dart';
import '../../widgets/icon_button.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: KBackgroundColor,
          image: DecorationImage(
              image: AssetImage('images/background.png'), fit: BoxFit.fill),
        ),
        child: Form(
          key: _globalKey,
          child: ListView(
            children: <Widget>[
              Logo(),
              FullName(),
              SizedBox(
                height: height * .02,
              ),
              TextFieldSection(
                title: "البريد الالكترونى",
                hint: "@Example.com",
                onsave: null,
              ),
              SizedBox(
                height: height * .02,
              ),
              TextFieldSection(
                title: "رقم الجوال",
                hint: "01234567899",
                onsave: null,
              ),
              SizedBox(
                height: height * .02,
              ),
              TextFieldSection(
                title: "الرقم السرى",
                hint: "**********",
                onsave: null,
              ),
              SizedBox(
                height: height * .01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Conditions()));
                      },
                      child: Text(
                        "الموافقة على الشروط والاحكام",
                        style: TextStyle(fontFamily: "Tajawal"),
                      ),
                    ),
                    SizedBox(width:1),
                    Checkbox(
                      value: _checked,
                      onChanged: (bool val) {
                        setState(() {
                          _checked = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Button(
                text: "انشاء حساب",
                ontab: () {
                  _globalKey.currentState.validate();
                },
              ),
              TextNav(
                text: "هل تمتلك حساب؟سجل دخول الان",
                ontab: () {
                  NamedNavigatorImpl()
                      .push(Routes.LOGIN_ROUTE, replace: false, clean: false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
