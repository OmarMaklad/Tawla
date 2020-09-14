import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/new_order/card.dart';
import 'package:tawlatraining/views/ongoing_order/alert_dialog.dart';
import 'package:tawlatraining/views/ongoing_order/card.dart';
import 'package:tawlatraining/views/restaurant_details/image.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import 'package:tawlatraining/widgets/long_text.dart';
import 'package:tawlatraining/widgets/white_button.dart';
import '../../constans.dart';

class OnGoingOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: KBackgroundColor,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              RusImage(
                ontab: (){
                  NamedNavigatorImpl().push(Routes.ORDER_ROUTE);
                },
              ),
              ONGoingOrderCard(),
            ],
          ),
          SizedBox(height: 30,),
          Button(
            text: "تأكيد انتهاء الحجز",
            ontab: (){
              NamedNavigatorImpl().push(Routes.ORDER_ROUTE);

            },
          ),
          SizedBox(height: 15),
          WhiteButton(
            text: "الغاء الحجز",
            ontab: (){
             showDialog(context: context,
             child:ShowAlertDialog(),
             );

            },
          ),
          SizedBox(height: 15),
          LongText(
            text: "لا تتأخر عن معاد حجزك! يحق للمطعم إلغاء الحجز في حالة تأخرك عن موعد الحجز لمدة 30 دقيقة",
          ),
        ],
      ),
    );
  }
}
