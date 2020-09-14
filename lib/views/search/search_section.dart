import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/search/text_field.dart';

import '../../constans.dart';
class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              NamedNavigatorImpl().push(Routes.GOOGLE_MAP_ROUTE);
            },
            child: CircleAvatar(
              maxRadius: 30,
              backgroundColor: KButtonColor,
              child: Icon(Icons.gps_fixed,size:20,),
            ),
          ),
          SizedBox(width:8),
          Expanded(child: SearchTextField(
            hint: "التصنيف",
            icon: Icons.keyboard_arrow_down,
          ),
          ),
          SizedBox(width:6),
          Expanded(child: SearchTextField(
            hint: "اسم المطعم",
          ),),
          SizedBox(width:6),
        ],
      ),
    );
  }
}
