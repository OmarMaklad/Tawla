import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import '../../constans.dart';

class HomeTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        NamedNavigatorImpl().push(Routes.SEARCH_ROUTE);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Stack(
          children: <Widget>[
            TextFormField(
              enabled: false,
              textAlign: TextAlign.right,
              style: TextStyle(),
              decoration: InputDecoration(
                filled: true,
                fillColor: KTextFieldColor,
                hintText: "عاوز تاكل فين النهارده؟",
                hintStyle: TextStyle(fontFamily: 'Tajawal'),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: KTextFieldColor),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: KTextFieldColor),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            CircleAvatar(
              maxRadius: 30,
              backgroundColor: KButtonColor,
              child: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}
