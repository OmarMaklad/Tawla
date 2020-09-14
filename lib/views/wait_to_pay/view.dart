import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/new_order/card.dart';
import 'package:tawlatraining/views/restaurant_details/image.dart';
import 'package:tawlatraining/views/wait_to_pay/card.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import 'package:tawlatraining/widgets/white_button.dart';
import '../../constans.dart';

class WaitToPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              WaitToPayCard(),
            ],
          ),
          SizedBox(height: 30,),
          Button(
            text: "الدفع",
            ontab: (){},
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
