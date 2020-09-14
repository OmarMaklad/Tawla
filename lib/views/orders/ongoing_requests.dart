import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/orders/card.dart';
class OnRequests extends StatelessWidget {
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
                  NamedNavigatorImpl().push(Routes.ONGOING_ORDER_ROUTE);
                },
              ),
          itemCount:6,
        ),
      ) ;
  }
}
