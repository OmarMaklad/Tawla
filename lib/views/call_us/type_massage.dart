import 'package:flutter/material.dart';

import '../../constans.dart';

class TypeMassage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text(
             "نوع رسالة التواصل",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Tajawal',
                color: KTextColor,
              ),
            ),
          ),
          TextFormField(
            textAlign: TextAlign.right,
            style: TextStyle(),
            decoration: InputDecoration(

              prefixIcon: IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_drop_down,size:25,color: KIconColor,),
              ),
              hintText:"اقتراح",
              filled: true,
              fillColor: KTextFieldColor,
              hintStyle: TextStyle(fontFamily: 'Tajawal', fontSize: 12),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: KTextFieldColor),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: KTextFieldColor),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
