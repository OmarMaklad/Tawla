import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';

class ListTitleSection extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const ListTitleSection({ this.image, this.title, this.subtitle});
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Container(
        height:40,
        width: 40,
        decoration: BoxDecoration(
            color: KBackgroundColor,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Image.asset(image),
      ),
      title: Text(title,style: TextStyle(fontFamily: 'Tajawal',fontSize: 16),),
      subtitle: Text(subtitle,style: TextStyle(fontFamily: 'Tajawal',fontSize: 10,color: KTextColor),),
    );
  }
}
