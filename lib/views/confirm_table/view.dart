import'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/confirm_table/body.dart';
import 'package:tawlatraining/widgets/arrowback_and_title.dart';
import '../../constans.dart';
class ConfirmTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body:Column(
        children: <Widget>[
          TitleAndArrow(
            width: .20,
            title: "تاكيد حجز الطاولة",
            back: (){
              NamedNavigatorImpl().push(Routes.DETAILS_ROUTE);
            },
          ),
          SizedBox(height: 20,),
         ConfirmBody(),
        ],
      ),
    );
  }
}
