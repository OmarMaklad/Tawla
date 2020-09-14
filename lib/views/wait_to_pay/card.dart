
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/views/restaurant_details/list_title.dart';
import '../../constans.dart';

class WaitToPayCard extends StatefulWidget {
  @override
  _WaitToPayCardState createState() => _WaitToPayCardState();
}

class _WaitToPayCardState extends State<WaitToPayCard> {
  int radioGroup =0;
  void  radioEventHandler(int value){
  setState(() {
    radioGroup = value;
  });
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 300),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: MediaQuery.of(context).size.height*.55,
          decoration: BoxDecoration(
            color: KTextFieldColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "مطعم ديري كوين",
                      style: TextStyle(fontFamily: 'Tajawal', fontSize: 18),
                    ),

                    trailing: Container(
                      width: 65,
                      child: Stack(
                        children: <Widget>[
                          Text(
                            "50",
                            style: TextStyle(
                                color: KIconColor,
                                fontSize: 40,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.bold),
                          ),
                          Positioned(
                            bottom:15,
                            left: 0,
                            child: Text("ريال",
                              style: TextStyle(fontFamily: "Tajawal",fontSize: 12,color: KIconColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTitleSection(
                    image: "images/phone-call.png",
                    title: "01123456789",
                    subtitle: "رقم جوال المطعم",
                  ),
                  ListTitleSection(
                    image: "images/users.png",
                    title: "2",
                    subtitle: "عدد الأفراد",
                  ),
                  ListTitleSection(
                    image: "images/order.png",
                    title: "1",
                    subtitle: "عدد الطاولات",
                  ),
                  ListTitleSection(
                    image: "images/calendar.png",
                    title: "26 فبراير - 03:15 مساء",
                    subtitle: "موعد الحجز",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Row(
                      children: <Widget>[
                        Text("اختر طريقة الدفع",style: TextStyle(fontFamily: 'Tajawal',fontSize: 16),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: <Widget>[
                        Radio<int>(
                          value: 0,
                          groupValue: radioGroup,
                          onChanged: radioEventHandler,
                        activeColor: KIconColor,
                        ),
                        Text("اونلاين",style: TextStyle(fontFamily: 'Tajawal',fontSize:14,color: KTextColor)),
                        SizedBox(width:120,),
                        Radio<int>(
                          value: 1,
                          groupValue: radioGroup,
                          onChanged: radioEventHandler,
                          activeColor: KIconColor,),
                        Text("محفظتى",style: TextStyle(fontFamily: 'Tajawal',fontSize: 14,color: KTextColor)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
