import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/views/activationode/resend.dart';
import 'package:tawlatraining/widgets/arrow_back.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import '../../constans.dart';
import 'package:tawlatraining/views/forgotpassword/forgot_password.dart';
import 'package:tawlatraining/views/newpassword/new_password.dart';
import 'activation_section.dart';

class ActivationCode extends StatelessWidget {
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
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: <Widget>[
                   ArrowBack(
                     back: (){
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context)=>ForgotPassword()));
                       _globalKey.currentState.validate();
                     },
                   ),
                 ],
               ),
         Padding(
           padding: const EdgeInsets.only(top:40),
           child: Container(
             height: MediaQuery.of(context).size.height*.2,
             child: Image.asset("images/logo.png"),
           ),),
               SizedBox(height:height*.02,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 40),
                 child: Text("من فضلك ادخل كود التفعيل المرسل إليك على رقم جوالك",
                 textAlign: TextAlign.center,
                 style: TextStyle(fontFamily: 'Tajawal',fontWeight: FontWeight.bold),),
               ),
               SizedBox(height:height*.02 ,),
              ActiveSection(),
               SizedBox(height: height*.02,),
               Button(
                 text: "ارسال",
                 ontab: (){
                   if( _globalKey.currentState.validate()) {
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context)=>NewPassword()));
                   }
                 },
               ),
              ResendCode(),
             ],
           ),
         ),
    ),
    );
  }
}
