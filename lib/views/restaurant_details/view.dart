import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/restaurant_details/details_section.dart';
import 'package:tawlatraining/views/restaurant_details/image.dart';
import 'package:tawlatraining/views/restaurant_details/image_counter.dart';
import 'package:tawlatraining/widgets/icon_button.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
    body:ListView(
      children: <Widget>[
       Stack(
         children: <Widget>[

           RusImage(
             ontab: (){
               NamedNavigatorImpl().push(Routes.HOME_ROUTE);
             },
           ),
           Padding(
             padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*.46),
             child: DetailsSection(),
           ),
          ImageCounter(),
           Padding(
             padding:  EdgeInsets.only(bottom: 20,top:MediaQuery.of(context).size.height*.93),
             child: Container(
               width:MediaQuery.of(context).size.width*1,
               child: Button(
                 text: "احجز طاولتك الآن",
                 ontab: (){
                   NamedNavigatorImpl().push(Routes.CONFIRM_TABLE_ROUTE);
                 },
               ),
             ),
           ),
         ],
       ),
      ],
    ),
    );
  }
}
