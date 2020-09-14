import 'package:flutter/material.dart';
import 'package:tawlatraining/views/activationode/activation_code.dart';
import 'package:tawlatraining/views/login/login.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import 'package:tawlatraining/widgets/long_text.dart';
import 'package:tawlatraining/widgets/textfield_section.dart';
import '../../constans.dart';
import 'package:tawlatraining/widgets/logo.dart';
import '../../widgets/arrow_back.dart';

class ForgotPassword extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

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
        child: Form(
          key: _globalKey,
          child: ListView(
            children: <Widget>[
              ArrowBack(
                back: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              ),
              Logo(),
              LongText(text:  "من فضلك ادخل رقم جوالك حتي تتمكن من تغيير كلمة المرور الخاصة بك",),
              TextFieldSection(
                title: "رقم الجوال",
                hint: "01234567899",
                onsave: null,
              ),
              SizedBox(
                height: height * .04,
              ),
              Button(
                text: "ارسال",
                ontab: () {
                if( _globalKey.currentState.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ActivationCode()));
                }

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
