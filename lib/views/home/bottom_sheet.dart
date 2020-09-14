import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/home/bottomsheet_list.dart';
import 'package:tawlatraining/views/home/bottomsheet_title.dart';
import '../../constans.dart';

class ModelSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height*.5,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.only(
          topLeft:const Radius.circular(30),
          topRight:const Radius.circular(30),
        ),
        color: KButtonTextColor,
      ),
      child: Expanded(
        child: ListView(
          children: <Widget>[
            ModelSheetTitle(),
            SizedBox(height:40),
            ModelSheetList(
              title: "حجوزاتى",
              image: "images/order.png",
              ontab: (){
                NamedNavigatorImpl().push(Routes.ORDER_ROUTE);
              },
            ),
            SizedBox(height:30),
            ModelSheetList(
              title: "محفظتلى",
              image: "images/wallet.png",
              ontab:(){
                NamedNavigatorImpl().push(Routes.WALLET_ROUTE);
              },
            ),
            SizedBox(height: 30),
            ModelSheetList(
              title: "اتصل بنا",
              image: "images/contact-mail.png",
              ontab:(){
                NamedNavigatorImpl().push(Routes.CALLUS_ROUTE);
              },
            ),
            SizedBox(height: 30),
            ModelSheetList(
              title: "عن التطبيق",
              image: "images/care-about-environment.png",
              ontab: (){
                NamedNavigatorImpl().push(Routes.ABOUT_ROUTE);
              },
            ),
            SizedBox(height: 30),
            ModelSheetList(
              title: "الشروط والاحكام",
              image: "images/condition.png",
              ontab:(){
                NamedNavigatorImpl().push(Routes.CONDITIONS_ROUTE);
              },
            ),
            SizedBox(height:30),
            ModelSheetList(
              title: "تسجيل خروج",
              image: "images/logout.png",
              ontab: (){
                NamedNavigatorImpl().push(Routes.SPLASH_ROUTE);
              }
            ),

          ],
        ),
      ),
    );
  }
}

