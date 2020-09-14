import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/ongoing_order/card.dart';
import 'package:tawlatraining/views/restaurant_details/image.dart';
import 'package:tawlatraining/widgets/long_text.dart';
import '../../constans.dart';

class CanceledOrders extends StatelessWidget {
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal:10,vertical: 15),
              height: MediaQuery.of(context).size.height*.18,
              decoration: BoxDecoration(
                color: KTextFieldColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20),
                    child: Text("سبب إلغاء الطلب",style: TextStyle(fontFamily: 'Tajawal',fontSize: 16),),
                  ),
                  LongText(
                    text: "تم إلغاء الطلب من قبل صاحب مطعم ديري كوين بسبب تأخرك لمدة 30 دقيقة عن موعد الحجز",
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}
