import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';
class ModelSheetList extends StatelessWidget {
  final String title;
  final String image;
  final Function ontab;
  const ModelSheetList({ this.title, this.image,this.ontab});
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: GestureDetector(
        onTap: ontab,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: <Widget>[
              Image.asset(image,color:KButtonColor,),
              SizedBox(width:20),
              Text(title,style: TextStyle(fontFamily: 'Tajawal',fontSize: 16),),
            ],
          ),
        ),
      ),
    );
  }
}
