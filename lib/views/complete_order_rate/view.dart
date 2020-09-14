import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/ongoing_order/card.dart';
import 'package:tawlatraining/views/restaurant_details/image.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import '../../constans.dart';
import 'card.dart';



class CompleteOrdersRate extends StatelessWidget {
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
              RateCard(),
            ],
          ),
          SizedBox(height: 30,),


        ],
      ),
    );
  }
}
