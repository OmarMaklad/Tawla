import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/views/activationode/activation_code.dart';
import 'package:tawlatraining/widgets/arrow_back.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import 'package:tawlatraining/widgets/textfield_section.dart';
import '../../constans.dart';
import 'package:tawlatraining/widgets/logo.dart';

class NewPassword extends StatelessWidget {
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
        child: Form(
          key: _globalKey,
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ArrowBack(
                    back: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>ActivationCode()));
                    },
                  ),
                ],
              ),
              Logo(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text("من فضلك ادخل كود التفعيل المرسل إليك على رقم جوالك",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Tajawal',fontWeight: FontWeight.bold),),
              ),
              SizedBox(height:height*.05,),
              TextFieldSection(
                title: "كلمة المرور الجديدة",
                hint: "**********",
                onsave: null,
              ),
              SizedBox(height:height*.02 ,),
              Button(
                text: "ارسال",
                ontab: (){
                  _globalKey.currentState.validate();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
