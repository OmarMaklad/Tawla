import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import 'package:tawlatraining/widgets/textfield_section.dart';

class ListChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: MediaQuery.of(context).size.height * .2,
              child: Image.asset("images/logo.png"),
            ),
          ),
          TextFieldSection(
            title: "كلمة المرور الحالية",
            hint: "**********",
            onsave:null,
          ),
          SizedBox(
            height: 20,
          ),
          TextFieldSection(
            title: "كلمة المرور الجديدة",
            hint: "**********",
            onsave: null,
          ),
          SizedBox(
            height:40,
          ),
          Button(
            text: "حفظ التعديل",
            ontab: (){
              NamedNavigatorImpl().push(Routes.EDIT_PROFILE_ROUTE);
            },
          ),
        ],
      ),
    );
  }
}
