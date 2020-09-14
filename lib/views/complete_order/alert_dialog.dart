import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/widgets/icon_button.dart';
import '../../constans.dart';

class RateAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Stack(
        children: <Widget>[
          Container(
            width: 500,
            height: 280,
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(top:50),
              child: Container(
                decoration: BoxDecoration(
                    color: KTextFieldColor,
                    borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.only(top: 35,right: 10,left: 10),
                child: ListView(
                  children: <Widget>[
                    Text("مطعم ديري كوين",textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Tajawal',fontWeight: FontWeight.w600),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text("سبب الإلغاء",textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Tajawal',fontSize: 14),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.star_border,size:40,color: KStarColor),
                        Icon(Icons.star_border,size:40,color: KStarColor),
                        Icon(Icons.star_border,size:40,color:KStarColor),
                        Icon(Icons.star,size:40,color:KStarColor),
                        Icon(Icons.star,size:40,color: KStarColor),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Button(
                      text: "إرسال",
                      ontab: (){
                        NamedNavigatorImpl().push(Routes.COMPLETE_ORDERS_RATE_ROUTE);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                maxRadius: 40,
                backgroundColor: Colors.green,
              ),
            ],
          ),
        ],
      ),


    );
  }
}
