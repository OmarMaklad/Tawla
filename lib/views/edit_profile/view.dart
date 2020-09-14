import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/edit_profile/list_textfield.dart';
import 'package:tawlatraining/widgets/arrowback_and_title.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Column(
        children: <Widget>[
          TitleAndArrow(
            width: .16,
            title: "تعديل بياناتى الشخصية",
            back: (){
              NamedNavigatorImpl().push(Routes.HOME_ROUTE);
            },
          ),
          ListTextField(),
        ],
      ),
    );
  }
}
