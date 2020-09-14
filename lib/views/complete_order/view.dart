import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/ongoing_order/card.dart';
import 'package:tawlatraining/views/restaurant_details/image.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import '../../constans.dart';
import 'alert_dialog.dart';

class CompleteOrders extends StatelessWidget {
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
            text: "تقييم الطلب",
            ontab: (){
              showDialog(context: context,
                child:RateAlertDialog(),
              );

            },
          ),
          SizedBox(height: 15),

        ],
      ),
    );
  }
}
