import'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/confirm_table/body.dart';
import 'package:tawlatraining/views/confirm_table/card_section.dart';
import 'package:tawlatraining/views/confirm_table/stack_logo.dart';
import 'package:tawlatraining/widgets/arrowback_and_title.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import '../../constans.dart';
class EditTableOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body:Column(
        children: <Widget>[
          TitleAndArrow(
            width: .20,
            title: "تعديل الحجز",
            back: (){
              NamedNavigatorImpl().push(Routes.NEW_ORDERS_ROUTE);
            },
          ),
          SizedBox(height: 20,),
          Expanded(
            child: ListView(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ConfirmCardSection(),
                    StackLogo(),
                  ],
                ),
                SizedBox(height:50),
                Button(
                  text: "حفظ التعديل",
                  ontab: (){
                    NamedNavigatorImpl().push(Routes.NEW_ORDERS_ROUTE);
                  },
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
