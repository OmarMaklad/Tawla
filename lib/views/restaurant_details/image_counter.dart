import 'package:flutter/material.dart';

import '../../constans.dart';

class ImageCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*.39,left: 20),
      child: Container(
        height:120,
        width: 45,
        decoration: BoxDecoration(
            color: KTextFieldColor,
            borderRadius: BorderRadius.circular(25)
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
            ),
            Text("2"),
            IconButton(
              icon: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
