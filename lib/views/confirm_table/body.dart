import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/confirm_table/stack_logo.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import 'package:tawlatraining/widgets/white_button.dart';
import 'card_section.dart';
class ConfirmBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
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
            text: "تاكيد الحجز",
            ontab: (){
              NamedNavigatorImpl().push(Routes.DONE_ROUTE);
            },
          ),
          SizedBox(height: 20,),
          WhiteButton(
            text: "الغاء",
            ontab: (){
              NamedNavigatorImpl().push(Routes.DETAILS_ROUTE);
            },
          ),
        ],
      ),
    );
  }
}
