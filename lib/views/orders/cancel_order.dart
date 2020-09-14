import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/orders/card.dart';
class CancelOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Directionality(
        textDirection: TextDirection.rtl,
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder:(BuildContext context,int index)=>
              OrderCard(
                ontab: (){
                  NamedNavigatorImpl().push(Routes.CANCELED_ORDERS_ROUTE);
                },
              ),
          itemCount:5,
        ),
      ) ;
  }
}
