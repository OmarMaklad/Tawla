import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/edit_profile/add_photo.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import 'package:tawlatraining/widgets/text_nav.dart';
import 'package:tawlatraining/widgets/textfield_section.dart';

class ListTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: ListView(
        children: <Widget>[
         AddPhoto(),
          TextFieldSection(
            title: "الاسم",
            hint: "عمر",
            onsave: null,
          ),
          SizedBox(height: height*.02,),
          TextFieldSection(
            title: "البريد الالكترونى",
            hint: "@Example.com",
            onsave: null,
          ),
          SizedBox(height: height*.02,),
          TextFieldSection(
            title: "رقم الجوال",
            hint: "0123456789",
            onsave: null,
          ),
          SizedBox(height: height*.05,),
          Button(
            text: "حفظ التعديل",
            ontab: (){
              NamedNavigatorImpl().push(Routes.HOME_ROUTE);
            },
          ),
          SizedBox(height: height*.04,),
          TextNav(
            text: "هل تريد تغيير كلمة المرور؟",
            ontab: (){
              NamedNavigatorImpl().push(Routes.CHANGE_PASSWORD_ROUTE);
            },
          ),
        ],
      ),
    );
  }
}
