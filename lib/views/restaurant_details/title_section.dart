import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';

class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Text("مطعم كرين كوين  ",style: TextStyle(fontSize: 16,fontFamily: 'Tajawal'),),
          Text("مفتوح الان",style: TextStyle(fontSize: 10,color:Colors.green,fontFamily: 'Tajawal'),),
        ],
      ),
      subtitle:  Row(
        children: <Widget>[
          Icon(Icons.phone,size: 12,),
          Text("0123456789",style: TextStyle(fontFamily: 'Tajawal',fontSize: 12),),
        ],
      ),
    );
  }
}
