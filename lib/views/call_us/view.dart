import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/call_us/logo.dart';
import 'package:tawlatraining/views/call_us/type_massage.dart';
import 'package:tawlatraining/views/call_us/your_massage.dart';
import 'package:tawlatraining/widgets/arrowback_and_title.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import 'package:tawlatraining/widgets/logo.dart';
import 'package:tawlatraining/widgets/textfield_section.dart';

import '../../constans.dart';
class CallUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Column(
        children: <Widget>[
          TitleAndArrow(
            width: .27,
            title: "اتصل بنا",
            back: (){
              NamedNavigatorImpl().push(Routes.HOME_ROUTE);
            },
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                CallUsLogo(),
                TypeMassage(),
                YourMassage(),
                SizedBox(height: 20),
                Button(
                  text: "ارسال",
                  ontab: (){},
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
