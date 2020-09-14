import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';

class OrderCard extends StatelessWidget {
  final Function ontab;

  const OrderCard({ this.ontab});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: ontab,
      child: Container(
        width: 100,
        height: 200,
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "images/1.jpg",
                  height: height*.25,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color:  Colors.white70
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4,left:20,right: 20,bottom: 4),
                    child: Text("مشويات",textAlign: TextAlign.center,style: TextStyle(fontSize:10),),
                  ),
                ),
              ),
              Positioned(
                right:25,
                bottom: 40,
                child: GestureDetector(
                  onTap: (){},
                  child: Text("مطعم ديري كوين",
                    style: TextStyle(
                        color: KButtonTextColor,
                        fontFamily: "Tajawal",
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ),
              Positioned(
                right: 18,
                bottom: 20,
                child: GestureDetector(
                  onTap: (){},
                  child: Row(
                    children: <Widget>[
                      Text("شارع الملك عبد العزيز - جدة",style:
                      TextStyle(
                          color: KButtonTextColor,
                          fontFamily: "Tajawal",
                          fontSize: 8),
                      ),
                      SizedBox(width: 2,),
                      Icon(
                        Icons.location_on,size: 12,
                        color: KButtonTextColor,
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
